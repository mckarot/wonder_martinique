import 'package:flutter/material.dart';
import 'responsive_image.dart';

/// Widget d'image responsive qui s'adapte automatiquement à la taille de l'écran
class ResponsiveImage extends StatelessWidget {
  final String imagePath;
  final BoxFit fit;
  final Alignment alignment;
  final bool useNetwork;
  final double? width;
  final double? height;
  final double baseWidth;
  final double baseHeight;
  final Widget? placeholder;
  final Widget? errorWidget;
  final String? semanticLabel;
  final bool excludeFromSemantics;

  const ResponsiveImage({
    Key? key,
    required this.imagePath,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.useNetwork = false,
    this.width,
    this.height,
    this.baseWidth = 100,
    this.baseHeight = 100,
    this.placeholder,
    this.errorWidget,
    this.semanticLabel,
    this.excludeFromSemantics = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculer les dimensions responsives si elles ne sont pas spécifiées
    final calculatedWidth = width ?? ResponsiveImageUtils.calculateResponsiveWidth(
      context,
      baseWidth: baseWidth,
    );
    
    final calculatedHeight = height ?? ResponsiveImageUtils.calculateResponsiveHeight(
      context,
      baseHeight: baseHeight,
    );

    Widget imageWidget;

    if (useNetwork) {
      imageWidget = Image.network(
        imagePath,
        width: calculatedWidth,
        height: calculatedHeight,
        fit: fit,
        alignment: alignment,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return placeholder ?? 
            Container(
              width: calculatedWidth,
              height: calculatedHeight,
              color: Colors.grey[300],
              child: const Icon(Icons.image, color: Colors.grey),
            );
        },
        errorBuilder: (context, error, stackTrace) {
          return errorWidget ?? 
            Container(
              width: calculatedWidth,
              height: calculatedHeight,
              color: Colors.grey[300],
              child: const Icon(Icons.broken_image, color: Colors.grey),
            );
        },
      );
    } else {
      imageWidget = Image.asset(
        imagePath,
        width: calculatedWidth,
        height: calculatedHeight,
        fit: fit,
        alignment: alignment,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        errorBuilder: (context, error, stackTrace) {
          return errorWidget ?? 
            Container(
              width: calculatedWidth,
              height: calculatedHeight,
              color: Colors.grey[300],
              child: const Icon(Icons.broken_image, color: Colors.grey),
            );
        },
      );
    }

    // Ajouter un conteneur avec les dimensions exactes pour garantir la proportionnalité
    return Container(
      width: calculatedWidth,
      height: calculatedHeight,
      child: imageWidget,
    );
  }
}

/// Widget d'image responsive avec une taille automatique basée sur un pourcentage de l'écran
class ResponsiveImagePercent extends StatelessWidget {
  final String imagePath;
  final BoxFit fit;
  final Alignment alignment;
  final bool useNetwork;
  final double widthPercent;
  final double heightPercent;
  final Widget? placeholder;
  final Widget? errorWidget;
  final String? semanticLabel;
  final bool excludeFromSemantics;

  const ResponsiveImagePercent({
    Key? key,
    required this.imagePath,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.useNetwork = false,
    this.widthPercent = 1.0,
    this.heightPercent = 1.0,
    this.placeholder,
    this.errorWidget,
    this.semanticLabel,
    this.excludeFromSemantics = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    final calculatedWidth = screenWidth * widthPercent;
    final calculatedHeight = screenHeight * heightPercent;

    Widget imageWidget;

    if (useNetwork) {
      imageWidget = Image.network(
        imagePath,
        width: calculatedWidth,
        height: calculatedHeight,
        fit: fit,
        alignment: alignment,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return placeholder ?? 
            Container(
              width: calculatedWidth,
              height: calculatedHeight,
              color: Colors.grey[300],
              child: const Icon(Icons.image, color: Colors.grey),
            );
        },
        errorBuilder: (context, error, stackTrace) {
          return errorWidget ?? 
            Container(
              width: calculatedWidth,
              height: calculatedHeight,
              color: Colors.grey[300],
              child: const Icon(Icons.broken_image, color: Colors.grey),
            );
        },
      );
    } else {
      imageWidget = Image.asset(
        imagePath,
        width: calculatedWidth,
        height: calculatedHeight,
        fit: fit,
        alignment: alignment,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        errorBuilder: (context, error, stackTrace) {
          return errorWidget ?? 
            Container(
              width: calculatedWidth,
              height: calculatedHeight,
              color: Colors.grey[300],
              child: const Icon(Icons.broken_image, color: Colors.grey),
            );
        },
      );
    }

    return imageWidget;
  }
}

/// Widget d'image responsive qui ajuste automatiquement ses dimensions
/// selon le type d'écran (petit, normal, grand, tablette)
class ResponsiveImageByScreenType extends StatelessWidget {
  final String imagePath;
  final BoxFit fit;
  final Alignment alignment;
  final bool useNetwork;
  final Map<ScreenSizeType, Size> sizeMap;
  final Widget? placeholder;
  final Widget? errorWidget;
  final String? semanticLabel;
  final bool excludeFromSemantics;

  const ResponsiveImageByScreenType({
    Key? key,
    required this.imagePath,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.useNetwork = false,
    required this.sizeMap,
    this.placeholder,
    this.errorWidget,
    this.semanticLabel,
    this.excludeFromSemantics = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenType = getScreenSizeType(context);
    final size = sizeMap[screenType] ?? Size(100, 100); // taille par défaut

    Widget imageWidget;

    if (useNetwork) {
      imageWidget = Image.network(
        imagePath,
        width: size.width,
        height: size.height,
        fit: fit,
        alignment: alignment,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return placeholder ?? 
            Container(
              width: size.width,
              height: size.height,
              color: Colors.grey[300],
              child: const Icon(Icons.image, color: Colors.grey),
            );
        },
        errorBuilder: (context, error, stackTrace) {
          return errorWidget ?? 
            Container(
              width: size.width,
              height: size.height,
              color: Colors.grey[300],
              child: const Icon(Icons.broken_image, color: Colors.grey),
            );
        },
      );
    } else {
      imageWidget = Image.asset(
        imagePath,
        width: size.width,
        height: size.height,
        fit: fit,
        alignment: alignment,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        errorBuilder: (context, error, stackTrace) {
          return errorWidget ?? 
            Container(
              width: size.width,
              height: size.height,
              color: Colors.grey[300],
              child: const Icon(Icons.broken_image, color: Colors.grey),
            );
        },
      );
    }

    return imageWidget;
  }
}