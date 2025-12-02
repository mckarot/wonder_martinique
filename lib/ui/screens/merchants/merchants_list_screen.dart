import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/merchants_data.dart';
import 'package:wonders/models/merchant.dart';
import 'package:wonders/ui/common/app_scroll_behavior.dart';
import 'package:wonders/ui/wonder_illustrations/common/wonder_illustration.dart';
import 'package:wonders/ui/wonder_illustrations/common/wonder_illustration_config.dart';

class MerchantsListScreen extends StatefulWidget {
  const MerchantsListScreen({super.key, this.wonderType});
  final WonderType? wonderType;

  @override
  State<MerchantsListScreen> createState() => _MerchantsListScreenState();
}

class _MerchantsListScreenState extends State<MerchantsListScreen> with TickerProviderStateMixin {
  final List<Merchant> _merchants = MerchantsData.getAllMerchants();
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: AppScrollBehavior(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: BackButton(
                color: $styles.colors.offWhite,
                onPressed: () {
                  if (widget.wonderType != null) {
                    context.go(ScreenPaths.wonderDetails(widget.wonderType!, tabIndex: 0));
                  } else {
                    context.go(ScreenPaths.home);
                  }
                },
              ),
              expandedHeight: 250,
              pinned: true,
              floating: false,
              backgroundColor: $styles.colors.black,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: const EdgeInsets.only(bottom: 16),
                title: const SizedBox.shrink(),
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        $styles.colors.black.withAlpha(179),
                        $styles.colors.greyStrong,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.store,
                          size: 60,
                          color: $styles.colors.accent1,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Discover our Wonders Collection',
                          style: $styles.text.body.copyWith(
                            color: $styles.colors.offWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all($styles.insets.lg),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: _merchants.length,
                  (context, index) {
                    final merchant = _merchants[index];
                    final animation = Tween<Offset>(
                      begin: const Offset(0, 0.1),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        parent: _animationController,
                        curve: Interval(
                          (1 / _merchants.length) * index,
                          1.0,
                          curve: Curves.easeOut,
                        ),
                      ),
                    );

                    _animationController.forward();

                    return SlideTransition(
                      position: animation,
                      child: Card(
                        color: $styles.colors.greyMedium.withAlpha(179),
                        elevation: 4,
                        margin: EdgeInsets.only(bottom: $styles.insets.md),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular($styles.corners.md),
                          side: BorderSide(
                            color: merchant.wonderType.bgColor.withAlpha(77),
                            width: 2,
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular($styles.corners.md),
                          onTap: () => context.go(ScreenPaths.merchantDetails(merchant.id)),
                          child: Padding(
                            padding: EdgeInsets.all($styles.insets.md),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: $styles.colors.greyStrong,
                                    borderRadius: BorderRadius.circular($styles.corners.md),
                                    border: Border.all(
                                      color: merchant.wonderType.bgColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular($styles.corners.md),
                                    child: WonderIllustration(
                                      merchant.wonderType,
                                      config: WonderIllustrationConfig.fg(zoom: 0.5),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        merchant.name,
                                        style: $styles.text.h3.copyWith(
                                          color: $styles.colors.offWhite,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        merchant.category,
                                        style: $styles.text.bodySmall.copyWith(
                                          color: $styles.colors.greyMedium,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: $styles.insets.sm,
                                          vertical: $styles.insets.xs,
                                        ),
                                        decoration: BoxDecoration(
                                          color: merchant.wonderType.bgColor.withAlpha(51),
                                          borderRadius: BorderRadius.circular($styles.corners.md),
                                        ),
                                        child: Text(
                                          merchant.wonderType.name.toUpperCase(),
                                          style: $styles.text.bodySmall.copyWith(
                                            color: merchant.wonderType.bgColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: $styles.colors.greyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
