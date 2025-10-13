import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/common/animate_utils.dart';
import 'package:wonders/logic/photo_gallery_logic.dart';
import 'package:wonders/ui/common/controls/app_image.dart';
import 'package:wonders/ui/common/controls/app_loading_indicator.dart';
import 'package:wonders/ui/common/controls/eight_way_swipe_detector.dart';
import 'package:wonders/ui/common/fullscreen_keyboard_listener.dart';
import 'package:wonders/ui/common/modals/fullscreen_asset_img_viewer.dart';
import 'package:wonders/ui/common/utils/app_haptics.dart';

part 'widgets/_animated_cutout_overlay.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key, this.imageSize, required this.wonderType});
  final Size? imageSize;
  final WonderType wonderType;

  @override
  Widget build(BuildContext context) {
    // Utilise un ChangeNotifierProvider pour créer et fournir une instance de PhotoGalleryLogic
    // à ce widget et à ses enfants.
    return ChangeNotifierProvider<PhotoGalleryLogic>(
      create: (_) => PhotoGalleryLogic(wonderType: wonderType),
      // Le Consumer écoute les changements dans PhotoGalleryLogic et reconstruit l'UI en conséquence.
      child: Consumer<PhotoGalleryLogic>(
        builder: (context, logic, child) {
          // DEBUG: Affiche les chemins d'images reçus par l'UI.
          print('[DEBUG UI] PhotoGallery rebuild. Nombre d\'images: ${logic.state.urls.length}');
          print('[DEBUG UI] Chemins: ${logic.state.urls}');

          final state = logic.state;
          // Affiche un indicateur de chargement si les données ne sont pas encore prêtes.
          if (state.isLoading) {
            return Center(child: AppLoadingIndicator());
          }
          // Si la liste d'URLs est vide après le chargement, affiche un message.
          if (state.urls.isEmpty) {
            return Center(child: Text('Aucune image disponible.'));
          }
          // Une fois les données chargées, affiche la galerie.
          return _PhotoGalleryContent(
            imageSize: imageSize,
            wonderType: wonderType,
            urls: state.urls,
          );
        },
      ),
    );
  }
}

// Le widget interne qui contient la logique d'affichage de la grille.
// Il est maintenant un StatefulWidget pour gérer son propre état interne (index, swipe, etc.).
class _PhotoGalleryContent extends StatefulWidget {
  const _PhotoGalleryContent({
    this.imageSize,
    required this.wonderType,
    required this.urls,
  });
  final Size? imageSize;
  final WonderType wonderType;
  final List<String> urls;

  @override
  State<_PhotoGalleryContent> createState() => _PhotoGalleryContentState();
}

class _PhotoGalleryContentState extends State<_PhotoGalleryContent> {
  static const int _gridSize = 5;
  int _index = ((_gridSize * _gridSize) / 2).round();
  Offset _lastSwipeDir = Offset.zero;
  final double _scale = 1;
  bool _skipNextOffsetTween = false;
  late Duration swipeDuration = $styles.times.med * .4;
  
  // Le nombre total d'images est maintenant basé sur la longueur de la liste d'URLs.
  int get _imgCount => widget.urls.length;

  late final List<FocusNode> _focusNodes = List.generate(_imgCount, (index) => FocusNode());

  final bool useClipPathWorkAroundForWeb = kIsWeb;

  @override
  void initState() {
    super.initState();
    // S'assure que l'index de départ est valide.
    if (_index >= _imgCount) {
      _index = 0;
    }
    _focusNodes[_index].requestFocus();
  }

  void _setIndex(int value, {bool skipAnimation = false}) {
    if (value < 0 || value >= _imgCount) return;
    _skipNextOffsetTween = skipAnimation;
    setState(() => _index = value);
    _focusNodes[value].requestFocus();
  }

  Offset _calculateCurrentOffset(double padding, Size size) {
    double halfCount = (_gridSize / 2).floorToDouble();
    Size paddedImageSize = Size(size.width + padding, size.height + padding);
    final originOffset = Offset(halfCount * paddedImageSize.width, halfCount * paddedImageSize.height);
    int col = _index % _gridSize;
    int row = (_index / _gridSize).floor();
    final indexedOffset = Offset(-paddedImageSize.width * col, -paddedImageSize.height * row);
    return originOffset + indexedOffset;
  }

  int _getCollectibleIndex() {
    return switch (widget.wonderType) {
      WonderType.chichenItza || WonderType.petra => 0,
      WonderType.colosseum || WonderType.pyramidsGiza => _gridSize - 1,
      WonderType.christRedeemer || WonderType.machuPicchu => _imgCount - 1,
      WonderType.greatWall || WonderType.tajMahal => _imgCount - _gridSize
    };
  }

  bool _handleKeyDown(KeyDownEvent event) {
    final key = event.logicalKey;
    Map<LogicalKeyboardKey, int> keyActions = {
      LogicalKeyboardKey.arrowUp: -_gridSize,
      LogicalKeyboardKey.arrowDown: _gridSize,
      LogicalKeyboardKey.arrowRight: 1,
      LogicalKeyboardKey.arrowLeft: -1,
    };

    int? actionValue = keyActions[key];
    if (actionValue == null) return false;
    int newIndex = _index + actionValue;

    bool isRightSide = _index % _gridSize == _gridSize - 1;
    bool isLeftSide = _index % _gridSize == 0;
    bool outOfBounds = newIndex < 0 || newIndex >= _imgCount;
    if ((isRightSide && key == LogicalKeyboardKey.arrowRight) ||
        (isLeftSide && key == LogicalKeyboardKey.arrowLeft) ||
        outOfBounds) {
      return false;
    }
    _setIndex(newIndex);
    return true;
  }

  void _handleSwipe(Offset dir) {
    int newIndex = _index;
    if (dir.dy != 0) newIndex += _gridSize * (dir.dy > 0 ? -1 : 1);
    if (dir.dx != 0) newIndex += (dir.dx > 0 ? -1 : 1);
    if (newIndex < 0 || newIndex > _imgCount - 1) return;
    if (dir.dx < 0 && newIndex % _gridSize == 0) return;
    if (dir.dx > 0 && newIndex % _gridSize == _gridSize - 1) return;
    _lastSwipeDir = dir;
    AppHaptics.lightImpact();
    _setIndex(newIndex);
  }

  Future<void> _handleImageTapped(int index, bool isSelected) async {
    if (_checkCollectibleIndex(index) && isSelected) return;
    if (_index == index) {
      int? newIndex = await appLogic.showFullscreenDialogRoute(
        context,
        FullscreenAssetImgViewer(urls: widget.urls, index: _index),
      );
      if (newIndex != null) _setIndex(newIndex, skipAnimation: true);
    } else {
      _setIndex(index);
    }
  }

  void _handleImageFocusChanged(int index, bool isFocused) {
    if (isFocused) {
      _setIndex(index);
    }
  }

  bool _checkCollectibleIndex(int index) {
    return index == _getCollectibleIndex() && collectiblesLogic.isLost(widget.wonderType, 1);
  }

  @override
  Widget build(BuildContext context) {
    return FullscreenKeyboardListener(
      onKeyDown: _handleKeyDown,
      child: Builder(
        builder: (context) {
          Size imgSize = context.isLandscape
              ? Size(context.widthPx * .5, context.heightPx * .66)
              : Size(context.widthPx * .66, context.heightPx * .5);
          imgSize = (widget.imageSize ?? imgSize) * _scale;
          final padding = $styles.insets.md;
          var gridOffset = _calculateCurrentOffset(padding, imgSize);
          gridOffset += Offset(0, -context.mq.padding.top / 2);
          final offsetTweenDuration = _skipNextOffsetTween ? Duration.zero : swipeDuration;
          final cutoutTweenDuration = _skipNextOffsetTween ? Duration.zero : swipeDuration * .5;
          return _AnimatedCutoutOverlay(
            animationKey: ValueKey(_index),
            cutoutSize: imgSize,
            swipeDir: _lastSwipeDir,
            duration: cutoutTweenDuration,
            opacity: _scale == 1 ? .7 : .5,
            enabled: useClipPathWorkAroundForWeb == false,
            child: SafeArea(
              bottom: false,
              child: OverflowBox(
                maxWidth: _gridSize * imgSize.width + padding * (_gridSize - 1),
                maxHeight: _gridSize * imgSize.height + padding * (_gridSize - 1),
                alignment: Alignment.center,
                child: EightWaySwipeDetector(
                  onSwipe: _handleSwipe,
                  threshold: 30,
                  child: TweenAnimationBuilder<Offset>(
                    tween: Tween(begin: gridOffset, end: gridOffset),
                    duration: offsetTweenDuration,
                    curve: Curves.easeOut,
                    builder: (_, value, child) => Transform.translate(offset: value, child: child),
                    child: FocusTraversalGroup(
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: _gridSize,
                        childAspectRatio: imgSize.aspectRatio,
                        mainAxisSpacing: padding,
                        crossAxisSpacing: padding,
                        children: List.generate(_imgCount, (i) => _buildImage(i, swipeDuration, imgSize)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildImage(int index, Duration swipeDuration, Size imgSize) {
    final imgUrl = widget.urls[index];
    // VERSION FONCTIONNELLE : Utilisation du widget Flutter le plus basique.
    return Container(
      color: Colors.red, // Ajout d'un fond rouge pour voir si le conteneur s'affiche
      child: Image.asset(
        imgUrl,
        fit: BoxFit.cover,
        // Ajout d'un errorBuilder pour forcer l'affichage des erreurs
        errorBuilder: (context, error, stackTrace) {
          print('ERREUR DE CHARGEMENT DE L\'ASSET: $error');
          return Icon(Icons.error, color: Colors.yellow);
        },
      ),
    );
  }
}
