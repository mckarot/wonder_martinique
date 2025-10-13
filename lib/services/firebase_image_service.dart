import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

/// Un service dédié à la récupération des données d'images depuis Firestore.
/// Centraliser cette logique ici permet de garder le reste de l'application propre
/// et facilite les modifications futures.
class FirebaseImageService {
  // Instance de Firestore, notre point d'accès à la base de données.
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Récupère une liste d'URLs pour la galerie d'une merveille spécifique.
  ///
  /// [wonderId] doit correspondre à l'ID du document dans la collection 'wonders'
  /// (par exemple, 'chichen-itza').
  ///
  /// Retourne une `Future<List<String>>` contenant les URLs des images,
  /// triées par le champ 'order'.
  /// En cas d'erreur, une liste vide est retournée et l'erreur est affichée
  /// dans la console de débogage.
  Future<List<String>> getImagesForWonder(String wonderId) async {
    // DEBUG: Affiche l'ID de la merveille demandée au début de la fonction.
    print('[DEBUG] ---------------------------------------------------');
    print('[DEBUG] Appel de getImagesForWonder pour wonderId: $wonderId');
    try {
      // 1. Cible la sous-collection 'gallery_images' de la merveille demandée.
      final querySnapshot = await _firestore
          .collection('wonders')
          .doc(wonderId)
          .collection('gallery_images')
          .orderBy('order', descending: false) // 2. Trie les images par leur ordre.
          .get();

      // DEBUG: Affiche le nombre de documents trouvés dans la sous-collection.
      print('[DEBUG] Requête Firestore exécutée. Nombre de documents trouvés: ${querySnapshot.docs.length}');

      // 3. Si aucun document n'est trouvé, retourne une liste vide.
      if (querySnapshot.docs.isEmpty) {
        debugPrint('Aucune image trouvée pour la merveille : $wonderId');
        print('[DEBUG] ---------------------------------------------------');
        return [];
      }

      // 4. Extrait le champ 'url' de chaque document et le convertit en une liste de chaînes.
      final urls = querySnapshot.docs.map((doc) {
        final data = doc.data();
        // DEBUG: Affiche les données de chaque document trouvé.
        print('[DEBUG] Traitement du document ${doc.id}: $data');
        // Petite sécurité pour s'assurer que l'URL existe et est une chaîne.
        return (data.containsKey('url') && data['url'] is String) ? data['url'] as String : '';
      }).where((url) => url.isNotEmpty).toList(); // Filtre les URLs vides.

      // DEBUG: Affiche la liste finale d'URLs avant de la retourner.
      print('[DEBUG] Liste d\'URLs extraite avec succès: $urls');
      print('[DEBUG] ---------------------------------------------------');
      return urls;

    } catch (e) {
      // 5. En cas d'erreur (problème de réseau, permissions, etc.),
      // on affiche l'erreur et on retourne une liste vide pour éviter que l'app ne crashe.
      debugPrint('❌ [ERREUR] Erreur lors de la récupération des images pour $wonderId: $e');
      print('[DEBUG] ---------------------------------------------------');
      return [];
    }
  }
}
