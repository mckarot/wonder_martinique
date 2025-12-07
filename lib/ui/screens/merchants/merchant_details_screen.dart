
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/merchants_data.dart';
import 'package:wonders/models/merchant.dart';
import 'package:wonders/ui/common/controls/app_header.dart';
import 'package:url_launcher/url_launcher.dart';

class MerchantDetailsScreen extends StatelessWidget {
  const MerchantDetailsScreen({super.key, required this.merchantId});

  final String merchantId;

  @override
  Widget build(BuildContext context) {
    final merchant = MerchantsData.getMerchantById(merchantId);

    if (merchant == null) {
      return const Center(child: Text('Merchant not found'));
    }

    return Container(
      color: $styles.colors.black,
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            AppHeader(
              title: merchant.name,
              isTransparent: true,
              onBack: () {
                final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
                if (extra != null && extra['from'] == 'map' && extra['type'] is WonderType) {
                  context.go(ScreenPaths.wonderDetails(extra['type'] as WonderType, tabIndex: 3));
                } else {
                  context.pop();
                }
              },
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular($styles.corners.md),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeaderImage(merchant),
                      _buildMerchantContent(context, merchant),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderImage(Merchant merchant) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Image.asset(
        merchant.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildMerchantContent(BuildContext context, Merchant merchant) {
    return Padding(
      padding: EdgeInsets.all($styles.insets.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            merchant.name,
            style: $styles.text.h2.copyWith(color: $styles.colors.white),
          ),
          Gap($styles.insets.sm),
          Text(
            merchant.category,
            style: $styles.text.body.copyWith(color: $styles.colors.offWhite),
          ),
          Gap($styles.insets.lg),
          Text(
            merchant.description,
            style: $styles.text.body.copyWith(color: $styles.colors.offWhite, height: 1.6),
          ),
          if (merchant.website != null) ...[
            Gap($styles.insets.xl),
            Center(
              child: ElevatedButton(
                onPressed: () => _launchUrl(merchant.website!),
                style: ElevatedButton.styleFrom(
                  foregroundColor: $styles.colors.black,
                  backgroundColor: $styles.colors.white,
                ),
                child: const Text('Visit Website'),
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
