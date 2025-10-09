import 'package:flutter/material.dart';

/// Extension pour simplifier l'utilisation des tailles d'écran
extension ResponsiveScreen on BuildContext {
  /// Retourne la largeur de l'écran
  double get width => MediaQuery.of(this).size.width;

  /// Retourne la hauteur de l'écran
  double get height => MediaQuery.of(this).size.height;

  /// Retourne le ratio de pixels de l'appareil
  double get pixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// Retourne l'orientation de l'écran
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Calcule une taille proportionnelle basée sur la largeur
  double wp(double percent) => width * percent / 100;

  /// Calcule une taille proportionnelle basée sur la hauteur
  double hp(double percent) => height * percent / 100;

  /// Retourne la densité de pixels de l'écran
  double get screenDensity => MediaQuery.of(this).devicePixelRatio;

  /// Retourne la largeur de l'écran en points logiciels
  double get logicalWidth => width / screenDensity;

  /// Retourne la hauteur de l'écran en points logiciels
  double get logicalHeight => height / screenDensity;
}

/// Une classe utilitaire pour simplifier les tailles responsives
class ResponsiveSize {
  late double _width;
  late double _height;

  ResponsiveSize(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
  }

  /// Retourne une taille proportionnelle basée sur la largeur
  double width(double input) => _width / 100 * input;

  /// Retourne une taille proportionnelle basée sur la hauteur
  double height(double input) => _height / 100 * input;
}