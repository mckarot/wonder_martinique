import 'dart:ui';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/merchants_data.dart';
import 'package:wonders/models/merchant.dart';
import 'package:wonders/ui/common/controls/app_header.dart';

part 'widgets/_blurred_image_bg.dart';
part 'widgets/_merchant_bottom_text_content.dart';
part 'widgets/_collapsing_carousel_item.dart';

class ArtifactCarouselScreen extends StatefulWidget {
  const ArtifactCarouselScreen({super.key, required this.type, this.contentPadding = EdgeInsets.zero});
  final WonderType type;
  final EdgeInsets contentPadding;

  @override
  State<ArtifactCarouselScreen> createState() => _ArtifactScreenState();
}

class _ArtifactScreenState extends State<ArtifactCarouselScreen> {
  PageController? _pageController;
  final _currentPage = ValueNotifier<double>(0);
  late final _currentMerchantIndex = ValueNotifier<int>(0);
  List<Merchant> _merchants = [];

  int get _wrappedPageIndex => _currentPage.value.round();

  @override
  void initState() {
    super.initState();
    _merchants = MerchantsData.getMerchantsForWonder(widget.type);
    _currentPage.value = 0;
    _currentMerchantIndex.value = 0;
  }

  void _handlePageChanged() {
    _currentPage.value = _pageController?.page ?? 0;
    _currentMerchantIndex.value = _wrappedPageIndex % _merchants.length;
  }

  void _handleMerchantTap(int index) {
    if (_merchants.isEmpty) return;
    final int actualIndex = index % _merchants.length;
    if (actualIndex >= 0 && actualIndex < _merchants.length) {
      final Merchant data = _merchants[actualIndex];
      context.go(ScreenPaths.merchantDetails(data.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final double bottomHeight = context.heightPx / 2.75;
    double itemHeight = (context.heightPx - 200 - bottomHeight).clamp(250, 400);
    double itemWidth = itemHeight * .666;

    if (_merchants.isEmpty) {
      return const Center(child: Text('No merchants found'));
    }

    _pageController?.dispose();
    _pageController = PageController(
      viewportFraction: itemWidth / context.widthPx,
      initialPage: _currentPage.value.round(),
    );
    _pageController?.addListener(_handlePageChanged);

    final pages = _merchants.map((m) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: _MerchantImage(m),
      );
    }).toList();

    return Stack(
      children: [
        /// Blurred Bg
        Positioned.fill(
          child: ValueListenableBuilder<int>(
              valueListenable: _currentMerchantIndex,
              builder: (_, value, __) {
                return _BlurredImageBg(assetPath: _merchants[value].imageUrl);
              }),
        ),

        Padding(
            padding: widget.contentPadding,
            child: Stack(
              children: [
                /// BgCircle
                _buildBgCircle(bottomHeight),

                /// Carousel Items
                PageView.builder(
                  controller: _pageController,
                  itemCount: _merchants.length,
                  onPageChanged: (index) {
                    _currentPage.value = index.toDouble();
                  },
                  itemBuilder: (_, index) {
                    final child = pages[index];
                    return ValueListenableBuilder<double>(
                      valueListenable: _currentPage,
                      builder: (_, value, __) {
                        final int offset = (value.round() - index).abs();
                        return _CollapsingCarouselItem(
                          width: itemWidth,
                          indexOffset: min(3, offset),
                          onPressed: () => _handleMerchantTap(index),
                          title: _merchants[index].name,
                          child: child,
                        );
                      },
                    );
                  },
                ),

                /// Bottom Text
                BottomCenter(
                  child: ValueListenableBuilder<int>(
                    valueListenable: _currentMerchantIndex,
                    builder: (_, value, __) {
                      return _MerchantBottomTextContent(
                        merchant: _merchants[value],
                        height: bottomHeight,
                      );
                    },
                  ),
                ),

                /// Header
                AppHeader(
                  title: 'Merchants',
                  showBackBtn: false,
                  isTransparent: true,
                ),
              ],
            ))
      ],
    );
  }

  OverflowBox _buildBgCircle(double height) {
    const double size = 2000;
    return OverflowBox(
      maxWidth: size,
      maxHeight: size,
      child: Transform.translate(
        offset: Offset(0, size / 2),
        child: Container(
          decoration: BoxDecoration(
            color: $styles.colors.offWhite.withOpacity(0.8),
            borderRadius: BorderRadius.vertical(top: Radius.circular(size)),
          ),
        ),
      ),
    );
  }
}
