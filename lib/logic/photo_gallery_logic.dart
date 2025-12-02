import 'package:wonders/common_libs.dart';

// Modèle pour représenter l'état de la galerie
class PhotoGalleryState {
  const PhotoGalleryState({
    this.isLoading = false, // N'est plus vraiment utilisé, mais conservé pour la structure
    this.urls = const [],
  });

  final bool isLoading;
  final List<String> urls;
}

/// Un ChangeNotifier pour gérer l'état de la galerie photo.
/// Il récupère maintenant les chemins d'images locales depuis WonderData.
class PhotoGalleryLogic extends ChangeNotifier {
  PhotoGalleryLogic({required this.wonderType}) {
    // Déclenche la récupération des données locales dès l'initialisation.
    _loadImagesFromLocalData();
  }

  final WonderType wonderType;

  // L'état actuel de la galerie.
  PhotoGalleryState _state = const PhotoGalleryState();
  PhotoGalleryState get state => _state;

  void _loadImagesFromLocalData() {
    // 1. Récupère les données de la merveille directement depuis wondersLogic.
    final wonder = wondersLogic.getData(wonderType);

    // 2. Met à jour l'état avec les chemins d'images locales.
    _state = PhotoGalleryState(isLoading: false, urls: wonder.localImagePaths);
    
    // 3. Notifie l'UI. Pas besoin de `notifyListeners()` ici car c'est fait dans le constructeur
    // et l'état ne changera plus. Si les données pouvaient changer, il faudrait notifier.
  }
}
