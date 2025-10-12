import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/common/animate_utils.dart';
import 'package:wonders/logic/data/artifact_data.dart';
import 'package:wonders/models/firestore_artifact.dart';
import 'package:wonders/services/firestore_artifact_service.dart';
import 'package:wonders/ui/common/compass_divider.dart';
import 'package:wonders/ui/common/controls/app_header.dart';
import 'package:wonders/ui/common/controls/app_loading_indicator.dart';
import 'package:wonders/ui/common/gradient_container.dart';
import 'package:wonders/ui/common/modals/fullscreen_url_img_viewer.dart';
import 'package:wonders/ui/common/utils/duration_utils.dart';

part 'widgets/_artifact_image_btn.dart';
part 'widgets/_info_column.dart';

class ArtifactDetailsScreen extends StatefulWidget {
  const ArtifactDetailsScreen({super.key, required this.artifactId});
  final String artifactId;

  @override
  State<ArtifactDetailsScreen> createState() => _ArtifactDetailsScreenState();
}

class _ArtifactDetailsScreenState extends State<ArtifactDetailsScreen> {
  late final Stream<FirestoreArtifact?> _stream = FirestoreArtifactService().getArtifactById(widget.artifactId);

  @override
  Widget build(BuildContext context) {
    bool hzMode = context.isLandscape;
    return ColoredBox(
      color: $styles.colors.greyStrong,
      child: StreamBuilder<FirestoreArtifact?>(
        stream: _stream,
        builder: (_, snapshot) {
          late Widget content;
          // Handle error, waiting, and null data states
          if (snapshot.hasError) {
            content = _buildError();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            content = Center(child: AppLoadingIndicator());
          } else if (snapshot.data == null) {
            content = _buildError(); // Data is null, artifact not found
          } else {
            // If we've gotten this far, data is guaranteed to be non-null.
            final artifactData = ArtifactData.fromFirestoreArtifact(snapshot.data!);
            content = hzMode
                ? Row(children: [
                    Expanded(child: _ArtifactImageBtn(data: artifactData)),
                    Expanded(child: Center(child: SizedBox(width: 600, child: _InfoColumn(data: artifactData)))),
                  ])
                : CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        pinned: true,
                        elevation: 0,
                        leading: SizedBox.shrink(),
                        expandedHeight: context.heightPx * .5,
                        collapsedHeight: context.heightPx * .35,
                        flexibleSpace: _ArtifactImageBtn(data: artifactData),
                      ),
                      SliverToBoxAdapter(child: _InfoColumn(data: artifactData)),
                    ],
                  );
          }

          return Stack(children: [
            content,
            AppHeader(isTransparent: true),
          ]);
        },
      ),
    );
  }

  Animate _buildError() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Icon(
          Icons.warning_amber_outlined,
          color: $styles.colors.accent1,
          size: $styles.insets.lg,
        )),
        Gap($styles.insets.xs),
        SizedBox(
          width: $styles.insets.xxl * 3,
          child: Text(
            $strings.artifactDetailsErrorNotFound(widget.artifactId),
            style: $styles.text.body.copyWith(color: $styles.colors.offWhite),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ).maybeAnimate().fadeIn();
  }
}
