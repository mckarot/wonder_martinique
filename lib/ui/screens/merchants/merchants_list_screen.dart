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
  late List<Merchant> _allMerchants;
  late List<Merchant> _filteredMerchants;
  late List<String> _categories;
  WonderType? _selectedWonder;
  String? _selectedCategory;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _allMerchants = MerchantsData.getAllMerchants();
    _categories = _allMerchants.map((m) => m.category).toSet().toList();
    _filteredMerchants = List.from(_allMerchants);
    _selectedWonder = widget.wonderType;
    _filterMerchants();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  void _filterMerchants() {
    setState(() {
      _filteredMerchants = _allMerchants.where((merchant) {
        final bool wonderMatch = _selectedWonder == null || merchant.wonderType == _selectedWonder;
        final bool categoryMatch = _selectedCategory == null || merchant.category == _selectedCategory;
        return wonderMatch && categoryMatch;
      }).toList();
      _filteredMerchants.sort((a, b) {
        if (_selectedWonder != null) {
          if (a.wonderType == _selectedWonder && b.wonderType != _selectedWonder) {
            return -1;
          }
          if (a.wonderType != _selectedWonder && b.wonderType == _selectedWonder) {
            return 1;
          }
        }
        int wonderCompare = a.wonderType.name.compareTo(b.wonderType.name);
        if (wonderCompare != 0) {
          return wonderCompare;
        }
        return a.name.compareTo(b.name);
      });
    });
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
              expandedHeight: MediaQuery.of(context).size.height / 5,
              pinned: true,
              floating: false,
              backgroundColor: $styles.colors.black,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: const EdgeInsets.only(bottom: 16),
                                title: Text(
                                  'Nos commercants',
                                  style: $styles.text.h4.copyWith(color: $styles.colors.offWhite),
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
                            SliverToBoxAdapter(
                              child: Container(
                                color: $styles.colors.body,
                                padding: EdgeInsets.all($styles.insets.md),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DropdownButtonFormField<WonderType?>(
                                      value: _selectedWonder,
                                      style: TextStyle(color: $styles.colors.offWhite),
                                      decoration: InputDecoration(
                                        labelText: 'Filter by Wonder',
                                        labelStyle: TextStyle(color: $styles.colors.accent1),
                                        filled: true,
                                        fillColor: $styles.colors.offWhite.withOpacity(0.1),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: $styles.colors.accent1.withOpacity(0.5)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: $styles.colors.accent1),
                                        ),
                                      ),
                                      icon: Icon(Icons.arrow_drop_down, color: $styles.colors.offWhite),
                                      dropdownColor: $styles.colors.greyStrong,
                                      onChanged: (WonderType? newValue) {
                                        setState(() {
                                          _selectedWonder = newValue;
                                        });
                                        _filterMerchants();
                                      },
                                                                            items: [
                                                                              DropdownMenuItem<WonderType?>(
                                                                                value: null,
                                                                                child: Text('All', style: TextStyle(color: _selectedWonder == null ? $styles.colors.accent1 : $styles.colors.offWhite)),
                                                                              ),
                                                                              ...WonderType.values.map<DropdownMenuItem<WonderType?>>((WonderType wonder) {
                                                                                return DropdownMenuItem<WonderType?>(
                                                                                  value: wonder,
                                                                                  child: Text(wonder.name, style: TextStyle(color: _selectedWonder == wonder ? $styles.colors.accent1 : $styles.colors.offWhite)),
                                                                                );
                                                                              }).toList(),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(height: 16),
                                                                          DropdownButtonFormField<String?>(
                                                                            value: _selectedCategory,
                                                                            style: TextStyle(color: $styles.colors.offWhite),
                                                                            decoration: InputDecoration(
                                                                              labelText: 'Filter by Category',
                                                                              labelStyle: TextStyle(color: $styles.colors.accent1),
                                                                              filled: true,
                                                                              fillColor: $styles.colors.offWhite.withOpacity(0.1),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(color: $styles.colors.accent1.withOpacity(0.5)),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(color: $styles.colors.accent1),
                                                                              ),
                                                                            ),
                                                                            icon: Icon(Icons.arrow_drop_down, color: $styles.colors.offWhite),
                                                                            dropdownColor: $styles.colors.greyStrong,
                                                                            onChanged: (String? newValue) {
                                                                              setState(() {
                                                                                _selectedCategory = newValue;
                                                                              });
                                                                              _filterMerchants();
                                                                            },
                                                                            items: [
                                                                              DropdownMenuItem<String?>(
                                                                                value: null,
                                                                                child: Text('All', style: TextStyle(color: _selectedCategory == null ? $styles.colors.accent1 : $styles.colors.offWhite)),
                                                                              ),
                                                                              ..._categories.map<DropdownMenuItem<String?>>((String category) {
                                                                                return DropdownMenuItem<String?>(
                                                                                  value: category,
                                                                                  child: Text(category, style: TextStyle(color: _selectedCategory == category ? $styles.colors.accent1 : $styles.colors.offWhite)),
                                                                                );
                                                                              }).toList(),
                                                                            ],
                                                                          ),
                
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all($styles.insets.lg),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: _filteredMerchants.length,
                  (context, index) {
                    final merchant = _filteredMerchants[index];
                    final animation = Tween<Offset>(
                      begin: const Offset(0, 0.1),
                      end: Offset.zero,
                    ).animate(
                      CurvedAnimation(
                        parent: _animationController,
                        curve: Interval(
                          (1 / _filteredMerchants.length) * index,
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
