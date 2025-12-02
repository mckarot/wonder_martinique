import 'package:flutter/material.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/models/firestore_artifact.dart';
import 'package:wonders/services/firestore_artifact_service.dart';
import 'package:wonders/ui/common/controls/app_loading_indicator.dart';

class ArtifactDetailsPage extends StatefulWidget {
  final String artifactId;

  const ArtifactDetailsPage({super.key, required this.artifactId});

  @override
  _ArtifactDetailsPageState createState() => _ArtifactDetailsPageState();
}

class _ArtifactDetailsPageState extends State<ArtifactDetailsPage> {
  late final Stream<FirestoreArtifact?> _stream;

  @override
  void initState() {
    super.initState();
    _stream = FirestoreArtifactService().getArtifactById(widget.artifactId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.black,
      body: StreamBuilder<FirestoreArtifact?>(
        stream: _stream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Une erreur est survenue.', style: $styles.text.body.copyWith(color: Colors.white)));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: AppLoadingIndicator());
          }
          final artifact = snapshot.data;
          if (artifact == null) {
            return Center(child: Text('Artefact non trouvé.', style: $styles.text.body.copyWith(color: Colors.white)));
          }

          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                pinned: true,
                backgroundColor: $styles.colors.black,
                leading: const BackButton(color: Colors.white),
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    artifact.title,
                    style: $styles.text.h4.copyWith(color: Colors.white, shadows: [
                      Shadow(blurRadius: 4, color: Colors.black.withOpacity(0.5))
                    ]),
                  ),
                  background: Hero(
                    tag: artifact.id,
                    child: AppImage(
                      image: NetworkImage(artifact.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all($styles.insets.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow('Culture', artifact.culture),
                      _buildDetailRow('Date', artifact.date),
                      _buildDetailRow('Période', artifact.period),
                      _buildDetailRow('Pays', artifact.country),
                      Gap($styles.insets.lg),
                      Text(
                        'Description',
                        style: $styles.text.h3.copyWith(color: Colors.white),
                      ),
                      Divider(color: Colors.white.withOpacity(0.5), height: $styles.insets.lg),
                      Text(
                        artifact.description,
                        style: $styles.text.body.copyWith(color: Colors.white.withOpacity(0.8), height: 1.6),
                      ),
                      Gap($styles.insets.lg),
                       _buildDetailRow('Type d\'objet', artifact.objectType),
                       _buildDetailRow('Médium', artifact.medium),
                       _buildDetailRow('Dimensions', artifact.dimension),
                       _buildDetailRow('Classification', artifact.classification),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    if (value.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.only(bottom: $styles.insets.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: $styles.text.bodyBold.copyWith(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: $styles.text.body.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
