import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/photo_gallery_logic.dart';
import 'package:wonders/ui/common/controls/app_loading_indicator.dart';
import 'package:wonders/ui/common/modals/fullscreen_asset_img_viewer.dart';

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
          if (state.isLoading) {
            return Center(child: AppLoadingIndicator());
          }
          if (state.urls.isEmpty) {
            return Center(child: Text('Aucune image disponible.'));
          }
          // Utilise le carrousel horizontal basé sur PageView
          return _HorizontalCarousel(
            wonderType: wonderType,
            urls: state.urls,
          );
        },
      ),
    );
  }
}

class _HorizontalCarousel extends StatefulWidget {
  const _HorizontalCarousel({
    required this.wonderType,
    required this.urls,
  });
  final WonderType wonderType;
  final List<String> urls;

  @override
  State<_HorizontalCarousel> createState() => _HorizontalCarouselState();
}

class _HorizontalCarouselState extends State<_HorizontalCarousel> {
  late final PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.8, // Affiche une partie des images voisines
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      itemCount: widget.urls.length,
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      itemBuilder: (context, index) {
        final imgUrl = widget.urls[index];
        bool isSelected = index == _currentPage;

        return Center(
          child: AnimatedScale(
            scale: isSelected ? 1.0 : 0.9,
            duration: $styles.times.med,
            child: GestureDetector(
              onTap: () {
                if (isSelected) {
                  appLogic.showFullscreenDialogRoute(
                    context,
                    FullscreenAssetImgViewer(urls: widget.urls, index: index),
                  );
                } else {
                  _controller.animateToPage(index, duration: $styles.times.fast, curve: Curves.easeOut);
                }
              },
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: $styles.insets.lg, horizontal: $styles.insets.xs),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected ? widget.wonderType.bgColor : Colors.transparent,
                      width: 4,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
