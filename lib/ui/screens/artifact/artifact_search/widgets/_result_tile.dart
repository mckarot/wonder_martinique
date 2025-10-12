part of '../artifact_search_screen.dart';

class _ResultTile extends StatelessWidget {
  const _ResultTile({required this.onPressed, required this.data});

  final void Function(FirestoreArtifact data) onPressed;
  final FirestoreArtifact data;

  @override
  Widget build(BuildContext context) {
    final Widget image = AppImage(
      key: ValueKey(data.id),
      image: NetworkImage(data.imageUrlSmall),
      fit: BoxFit.cover,
      scale: 0.5,
      distractor: true,
      color: $styles.colors.greyMedium.withOpacity(0.2),
    );

    return AspectRatio(
      aspectRatio: 0.7, // Utiliser un ratio fixe car FirestoreArtifact n'a pas cette info
      child: ClipRRect(
        borderRadius: BorderRadius.circular($styles.insets.xs),
        child: AppBtn.basic(
          semanticLabel: data.title,
          onPressed: () => onPressed(data),
          child: Container(
            color: $styles.colors.black,
            width: double.infinity, // force image to fill area
            height: double.infinity,
            child: image,
          ),
        ),
      ),
    );
  }
}
