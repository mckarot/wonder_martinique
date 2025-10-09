import 'package:flutter/material.dart';

/// Classe utilitaire pour gérer les dimensions proportionnelles des images
class ResponsiveImageUtils {
  /// Calcule la taille responsive basée sur la largeur de l'écran
  static double calculateResponsiveWidth(
    BuildContext context, {
    double baseWidth = 100,
    double maxWidth = double.infinity,
    double minWidth = 0,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveWidth = (screenWidth / 375) * baseWidth; // 375 est la largeur de référence (iPhone 12)
    return responsiveWidth.clamp(minWidth, maxWidth);
  }

  /// Calcule la taille responsive basée sur la hauteur de l'écran
  static double calculateResponsiveHeight(
    BuildContext context, {
    double baseHeight = 100,
    double maxHeight = double.infinity,
    double minHeight = 0,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final responsiveHeight = (screenHeight / 812) * baseHeight; // 812 est la hauteur de référence (iPhone 12)
    return responsiveHeight.clamp(minHeight, maxHeight);
  }

  /// Calcule une dimension responsive basée sur la densité de pixels
  static double calculateScaledDimension(
    BuildContext context, {
    double baseDimension = 100,
  }) {
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return baseDimension * (pixelRatio > 2.0 ? 2.0 : pixelRatio);
  }

  /// Convertit une taille fixe en taille responsive
  static Size calculateResponsiveSize(
    BuildContext context, {
    double baseWidth = 100,
    double baseHeight = 100,
  }) {
    final responsiveWidth = calculateResponsiveWidth(context, baseWidth: baseWidth);
    final responsiveHeight = calculateResponsiveHeight(context, baseHeight: baseHeight);
    return Size(responsiveWidth, responsiveHeight);
  }
}

/// Extension pour simplifier l'utilisation des tailles d'écran
extension ScreenSize on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get pixelRatio => MediaQuery.of(this).devicePixelRatio;
  Orientation get orientation => MediaQuery.of(this).orientation;
}

/// Enum pour les tailles d'écran standard
enum ScreenSizeType {
  small(320.0, 568.0),      // iPhone SE
  normal(375.0, 812.0),     // iPhone 12
  large(414.0, 896.0),      // iPhone 12 Pro Max
  tablet(768.0, 1024.0);    // iPad Mini

  const ScreenSizeType(this.width, this.height);
  final double width;
  final double height;
}

/// Obtenir le type d'écran actuel
ScreenSizeType getScreenSizeType(BuildContext context) {
  final width = MediaQuery.of(context).size.shortestSide;
  
  if (width < ScreenSizeType.normal.width) {
    return ScreenSizeType.small;
  } else if (width < ScreenSizeType.large.width) {
    return ScreenSizeType.normal;
  } else if (width < ScreenSizeType.tablet.width) {
    return ScreenSizeType.large;
  } else {
    return ScreenSizeType.tablet;
  }
}