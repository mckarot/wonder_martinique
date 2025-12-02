part of '../artifact_carousel_screen.dart';

class _MerchantBottomTextContent extends StatelessWidget {
  const _MerchantBottomTextContent({
    required this.merchant,
    required this.height,
  });

  final Merchant merchant;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.md),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(20),
          Text(
            merchant.name.toUpperCase(),
            style: $styles.text.h2.copyWith(color: $styles.colors.black, fontWeight: FontWeight.w700, letterSpacing: 2),
            textAlign: TextAlign.center,
          ),
          Gap(10),
          Text(
            merchant.category,
            style: $styles.text.body.copyWith(color: $styles.colors.greyStrong),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
