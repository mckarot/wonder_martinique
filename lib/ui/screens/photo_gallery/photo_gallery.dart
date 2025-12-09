import 'package:flutter/foundation.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/common/animate_utils.dart';
import 'package:wonders/logic/photo_gallery_logic.dart';
import 'package:wonders/ui/common/controls/app_loading_indicator.dart';
import 'package:wonders/ui/common/controls/eight_way_swipe_detector.dart';
import 'package:wonders/ui/common/fullscreen_keyboard_listener.dart';
import 'package:wonders/ui/common/modals/fullscreen_asset_img_viewer.dart';
import 'package:wonders/ui/common/utils/app_haptics.dart';

part 'widgets/_animated_cutout_overlay.dart'; // This file needs to be created or adapted

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key, this.imageSize, required this.wonderType});
  final Size? imageSize;
  final WonderType wonderType;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PhotoGalleryLogic>(
      create: (_) => PhotoGalleryLogic(wonderType: wonderType),
      child: Consumer<PhotoGalleryLogic>(
        builder: (context, logic, child) {
          final state = logic.state;
          if (state.urls.isEmpty) {
            return Center(child: AppLoadingIndicator()); // Show loading indicator if urls are empty
          }
          return _PhotoGalleryGrid(
            key: ValueKey(wonderType), // Add key to force recreation
            imageSize: imageSize,
            wonderType: wonderType,
            photoUrls: state.urls,
          );
        },
      ),
    );
  }
}

class _PhotoGalleryGrid extends StatefulWidget {
  const _PhotoGalleryGrid({
    super.key,
    this.imageSize,
    required this.wonderType,
    required this.photoUrls,
  });
  final Size? imageSize;
  final WonderType wonderType;
  final List<String> photoUrls;

  @override
  State<_PhotoGalleryGrid> createState() => _PhotoGalleryGridState();
}

class _PhotoGalleryGridState extends State<_PhotoGalleryGrid> {
  int get _gridSize {
    if (_imgCount <= 9) return 3;
    if (_imgCount <= 16) return 4;
    return 5;
  }
  late int _index;
  Offset _lastSwipeDir = Offset.zero;
  final double _scale = 1;
  bool _skipNextOffsetTween = false;
  late Duration swipeDuration = $styles.times.med * .4;
  late final List<String> _photoUrls; // Use widget.photoUrls directly
  int get _imgCount => _photoUrls.length;

  late final List<FocusNode> _focusNodes = List.generate(_imgCount, (index) => FocusNode());

  //TODO: Remove this field (and associated workarounds) once web properly supports ClipPath (https://github.com/flutter/flutter/issues/124675)
  final bool useClipPathWorkAroundForWeb = kIsWeb;

  @override
  void initState() {
    super.initState();
    _photoUrls = _preparePhotoUrls(widget.photoUrls);
    _index = (_imgCount / 2).round();
    _focusNodes[_index].requestFocus();
  }

  List<String> _preparePhotoUrls(List<String> urls) {
    return urls;
  }

  void _setIndex(int value, {bool skipAnimation = false}) {
    if (value < 0 || value >= _imgCount) return;
    _skipNextOffsetTween = skipAnimation;
    setState(() => _index = value);
    _focusNodes[value].requestFocus();
  }

  /// Determine the required offset to show the current selected index.
  /// index=0 is top-left, and the index=max is bottom-right.
  Offset _calculateCurrentOffset(double padding, Size size) {
    double halfCount = (_gridSize / 2).floorToDouble();
    Size paddedImageSize = Size(size.width + padding, size.height + padding);
    // Get the starting offset that would show the top-left image (index 0)
    final originOffset = Offset(halfCount * paddedImageSize.width, halfCount * paddedImageSize.height);
    // Add the offset for the row/col
    int col = _index % _gridSize;
    int row = (_index / _gridSize).floor();
    final indexedOffset = Offset(-paddedImageSize.width * col, -paddedImageSize.height * row);
    return originOffset + indexedOffset;
  }

  /// Used for hiding collectibles around the photo grid.
  int _getCollectibleIndex() {
    switch (widget.wonderType) {
      case WonderType.chichenItza:
      case WonderType.petra:
        return 0;
      case WonderType.colosseum:
      case WonderType.pyramidsGiza:
        return _gridSize - 1;
      case WonderType.christRedeemer:
      case WonderType.machuPicchu:
        return _imgCount - 1;
      case WonderType.greatWall:
      case WonderType.tajMahal:
        return _imgCount - _gridSize;
    }
  }

  bool _handleKeyDown(KeyDownEvent event) {
    final key = event.logicalKey;
    Map<LogicalKeyboardKey, int> keyActions = {
      LogicalKeyboardKey.arrowUp: -_gridSize,
      LogicalKeyboardKey.arrowDown: _gridSize,
      LogicalKeyboardKey.arrowRight: 1,
      LogicalKeyboardKey.arrowLeft: -1,
    };

    // Apply key action, exit early if no action is defined
    int? actionValue = keyActions[key];
    if (actionValue == null) return false;
    int newIndex = _index + actionValue;

    // Block actions along edges of the grid
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

  /// Converts a swipe direction into a new index
  void _handleSwipe(Offset dir) {
    // Calculate new index, y swipes move by an entire row, x swipes move one index at a time
    int newIndex = _index;
    if (dir.dy != 0) newIndex += _gridSize * (dir.dy > 0 ? -1 : 1);
    if (dir.dx != 0) newIndex += (dir.dx > 0 ? -1 : 1);
    // After calculating new index, exit early if we don't like it...
    if (newIndex < 0 || newIndex > _imgCount - 1) {
      return; // keep the index in range
    }
    if (dir.dx < 0 && newIndex % _gridSize == 0) {
      return; // prevent right-swipe when at right side
    }
    if (dir.dx > 0 && newIndex % _gridSize == _gridSize - 1) {
      return; // prevent left-swipe when at left side
    }
    _lastSwipeDir = dir;
    AppHaptics.lightImpact();
    _setIndex(newIndex);
  }

  Future<void> _handleImageTapped(int index, bool isSelected) async {
    if (_checkCollectibleIndex(index) && isSelected) return;
    if (_index == index) {
      // Use _photoUrls directly as they are local asset paths now
      final urls = _photoUrls.map((e) {
        return e;
      }).toList();
      if (!mounted) return; // Add mounted check before using context
      int? newIndex = await appLogic.showFullscreenDialogRoute(
        context,
        FullscreenAssetImgViewer(urls: urls, index: _index), // Changed to AssetImgViewer
      );

      if (newIndex != null) {
        _setIndex(newIndex, skipAnimation: true);
      }
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
      child: Builder( // Use Builder as _photoUrls is late final and won't change
        builder: (context) {
          if (_photoUrls.isEmpty) {
            return Center(child: AppLoadingIndicator());
          }
          Size imgSize = context.isLandscape
              ? Size(context.widthPx * .5, context.heightPx * .66)
              : Size(context.widthPx * .66, context.heightPx * .5);
          imgSize = (widget.imageSize ?? imgSize) * _scale;
          // Get transform offset for the current _index
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
              // Place content in overflow box, to allow it to flow outside the parent
              child: OverflowBox(
                maxWidth: _gridSize * imgSize.width + padding * (_gridSize - 1),
                maxHeight: _gridSize * imgSize.height + padding * (_gridSize - 1),
                alignment: Alignment.center,
                // Detect swipes in order to change index
                child: EightWaySwipeDetector(
                  onSwipe: _handleSwipe,
                  threshold: 30,
                  // A tween animation builder moves from image to image based on current offset
                  child: TweenAnimationBuilder<Offset>(
                    tween: Tween(begin: gridOffset, end: gridOffset),
                    duration: offsetTweenDuration,
                    curve: Curves.easeOut,
                    builder: (_, value, child) => Transform.translate(offset: value, child: child),
                    child: FocusTraversalGroup(
                      //policy: OrderedTraversalPolicy(),
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
    /// Bind to collectibles.statesById because we might need to rebuild if a collectible is found.
    return FocusTraversalOrder(
      order: NumericFocusOrder(index.toDouble()),
      child: ValueListenableBuilder(
          valueListenable: collectiblesLogic.statesById,
          builder: (_, __, ___) {
            bool isSelected = index == _index;
            final imgUrl = _photoUrls[index];
            late String semanticLbl;
            if (_checkCollectibleIndex(index)) {
              semanticLbl = $strings.collectibleItemSemanticCollectible;
            } else {
              semanticLbl = !isSelected
                  ? $strings.photoGallerySemanticFocus(index + 1, _imgCount)
                  : $strings.photoGallerySemanticFullscreen(index + 1, _imgCount);
            }

            final photoWidget = TweenAnimationBuilder<double>(
              duration: $styles.times.med,
              curve: Curves.easeOut,
              tween: Tween(begin: 1, end: isSelected ? 1.15 : 1),
              builder: (_, value, child) => Transform.scale(scale: value, child: child),
              child: Image.asset( // Changed to Image.asset for local images
                imgUrl,
                fit: BoxFit.cover,
              ).maybeAnimate().fade(),
            );

            return MergeSemantics(
              child: Semantics(
                focused: isSelected,
                image: !_checkCollectibleIndex(index),
                liveRegion: isSelected,
                onIncrease: () => _handleImageTapped(_index + 1, false),
                onDecrease: () => _handleImageTapped(_index - 1, false),
                child: _checkCollectibleIndex(index)
                    ? Center(
                        child: HiddenCollectible(widget.wonderType, index: 1, size: 100, focus: _focusNodes[index]),
                      )
                    : AppBtn.basic(
                        semanticLabel: semanticLbl,
                        focusNode: _focusNodes[index],
                        onFocusChanged: (isFocused) => _handleImageFocusChanged(index, isFocused),
                        onPressed: () => _handleImageTapped(index, isSelected),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            width: imgSize.width,
                            height: imgSize.height,
                            child: (useClipPathWorkAroundForWeb == false)
                                ? photoWidget
                                : Stack(
                                    children: [
                                      photoWidget,
                                      if (!isSelected)
                                        Positioned.fill(
                                          child: ColoredBox(color: Colors.black.withOpacity(0.5)),
                                        ),
                                    ],
                                  ),
                          ),
                        ),
                      ),
              ),
            );
          }),
    );
  }
}