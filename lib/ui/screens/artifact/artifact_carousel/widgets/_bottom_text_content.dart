part of '../artifact_carousel_screen.dart';

class _BottomTextContent extends StatelessWidget {
  const _BottomTextContent({
    required this.artifact,
    required this.height,
    required this.shortMode,
    required this.count,
    required this.pageController,
    required this.onSearchTap,
    required this.onArtifactTap,
  });

  final HighlightData artifact;
  final double height;
  final bool shortMode;
  final int count;
  final PageController pageController;
  final VoidCallback onSearchTap;
  final void Function(int) onArtifactTap;

  int get _currentPage => pageController.page?.round() ?? 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: $styles.sizes.maxContentWidth2,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.md),
      alignment: Alignment.center,
      child: Stack(
        children: [
          /// Text
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap($styles.insets.md),
              Column(
                children: [
                  IgnorePointerKeepSemantics(
                    child: Semantics(
                      button: true,
                      onIncrease: () => onArtifactTap(_currentPage + 1),
                      onDecrease: () => onArtifactTap(_currentPage - 1),
                      onTap: () => onArtifactTap(_currentPage),
                      liveRegion: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Force column to stretch horizontally so text is centered
                          SizedBox(width: double.infinity),
                          // Stop text from scaling to make layout a little easier, it's already quite large
                          StaticTextScale(
                            child: Text(
                              artifact.title,
                              overflow: TextOverflow.ellipsis,
                              style: $styles.text.h2.copyWith(color: $styles.colors.black, height: 1.2, fontSize: 32),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ),
                          if (!shortMode) ...[
                            Gap($styles.insets.xxs),
                            Text(
                              artifact.date.isEmpty ? '--' : artifact.date,
                              style: $styles.text.body,
                              textAlign: TextAlign.center,
                            ),
                          ]
                        ],
                      ).maybeAnimate(key: ValueKey(artifact.artifactId)).fadeIn(),
                    ),
                  ),
                ],
              ),
              if (!shortMode) Gap($styles.insets.sm),
              Spacer(),
              if (!shortMode)
                AppPageIndicator(
                  count: count,
                  controller: pageController,
                  semanticPageTitle: $strings.artifactsSemanticArtifact,
                ),
              Gap($styles.insets.md),
              AppBtn.from(
                text: $strings.artifactsButtonBrowse,
                expand: true,
                onPressed: onSearchTap,
              ),
              Gap($styles.insets.lg),
            ],
          ),
        ],
      ),
    );
  }
}
