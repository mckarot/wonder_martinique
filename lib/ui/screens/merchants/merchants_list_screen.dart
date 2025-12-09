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
  late List<Merchant> _merchants;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _merchants = MerchantsData.getAllMerchants();
    _merchants.sort((a, b) {
      if (widget.wonderType != null) {
        if (a.wonderType == widget.wonderType && b.wonderType != widget.wonderType) {
          return -1;
        }
        if (a.wonderType != widget.wonderType && b.wonderType == widget.wonderType) {
          return 1;
        }
      }
      int wonderCompare = a.wonderType.name.compareTo(b.wonderType.name);
      if (wonderCompare != 0) {
        return wonderCompare;
      }
      return a.name.compareTo(b.name);
    });
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
                title: Text(
                  'Nos commercants',
                  style: $styles.text.h3.copyWith(color: $styles.colors.offWhite),
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    WonderIllustration(
                      widget.wonderType ?? WonderType.greatWall,
                      config: const WonderIllustrationConfig(
                        enableAnims: false,
                        isShowing: true,
                        zoom: 2,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            $styles.colors.black.withOpacity(0.6),
                            $styles.colors.black.withOpacity(0.8),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                        color: $styles.colors.greyMedium,
                        elevation: 4,
                        margin: EdgeInsets.only(bottom: $styles.insets.md),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular($styles.corners.md),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular($styles.corners.md),
                          onTap: () => context.go(ScreenPaths.merchantDetails(merchant.id)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular($styles.corners.md),
                                    topRight: Radius.circular($styles.corners.md),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(merchant.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular($styles.corners.md),
                                      topRight: Radius.circular($styles.corners.md),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        $styles.colors.black.withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all($styles.insets.md),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                          style: $styles.text.body.copyWith(
                                            color: $styles.colors.greyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 1,
                                color: $styles.colors.greyMedium.withOpacity(0.2),
                              ),
                              Padding(
                                padding: EdgeInsets.all($styles.insets.md),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: $styles.insets.sm,
                                        vertical: $styles.insets.xs,
                                      ),
                                      decoration: BoxDecoration(
                                        color: merchant.wonderType.bgColor.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular($styles.corners.md),
                                        border: Border.all(
                                          color: merchant.wonderType.bgColor,
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        merchant.wonderType.name.toUpperCase(),
                                        style: $styles.text.bodySmall.copyWith(
                                          color: $styles.colors.offWhite,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                      color: $styles.colors.greyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
