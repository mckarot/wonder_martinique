part of '../photo_gallery.dart';

class _AnimatedCutoutOverlay extends StatelessWidget {
  const _AnimatedCutoutOverlay({
    super.key, // Add super.key back for proper widget key handling
    required this.cutoutSize,
    required this.animationKey,
    required this.swipeDir,
    required this.duration,
    required this.opacity,
    required this.enabled,
    required this.child,
  });

  final Size cutoutSize;
  final Key animationKey; // This is a ValueKey
  final Offset swipeDir;
  final Duration duration;
  final double opacity;
  final bool enabled;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child, // The GridView
        if (enabled)
          ClipPath(
            clipper: _CustomCutoutClipper(cutoutSize, animationKey, swipeDir, duration),
            child: IgnorePointer(
              child: Container(
                color: Colors.black.withOpacity(opacity),
              ),
            ),
          ),
      ],
    );
  }
}

class _CustomCutoutClipper extends CustomClipper<Path> {
  _CustomCutoutClipper(this.cutoutSize, this.animationKey, this.swipeDir, this.duration) : super(reclip: null); // reclip can be null if not using a Listenable
  final Size cutoutSize;
  final Key animationKey;
  final Offset swipeDir;
  final Duration duration;

  @override
  Path getClip(Size size) {
    Path path = Path();
    // Draw a rectangle that covers the whole screen
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    // Punch a hole in the rectangle
    double left = (size.width - cutoutSize.width) / 2;
    double top = (size.height - cutoutSize.height) / 2;
    path.addRRect(RRect.fromRectAndRadius(Rect.fromLTWH(left, top, cutoutSize.width, cutoutSize.height), Radius.circular(8)));
    // Set the path to be the inverse of the initial path
    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(covariant _CustomCutoutClipper oldClipper) {
    // Only re-clip when the animationKey changes
    return oldClipper.animationKey != animationKey;
  }
}