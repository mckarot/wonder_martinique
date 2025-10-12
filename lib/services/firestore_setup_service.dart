import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/services/firebase_service.dart';
import 'package:wonders/models/firestore_artifact.dart';

class FirestoreSetupService {
  static final FirestoreSetupService _instance = FirestoreSetupService._internal();
  factory FirestoreSetupService() => _instance;
  FirestoreSetupService._internal();

  final FirebaseFirestore _firestore = FirebaseService().firestore;

  /// Crée une structure de base pour la collection "artifacts" en ajoutant un artefact exemple
  Future<void> createArtifactsCollection() async {
    try {
      // Création d'un artefact exemple pour initialiser la collection
      final sampleArtifact = FirestoreArtifact(
        id: 'sample_artifact',
        title: 'Artefact Exemple',
        culture: 'Exemple',
        date: '2025',
        artifactId: 'sample_001',
        wonderType: 'chichenItza', // Utilisation d'une valeur par défaut
        imageUrl: 'https://via.placeholder.com/400x600.png',
        imageUrlSmall: 'https://via.placeholder.com/200x300.png',
        description: 'Ceci est un artefact d\'exemple pour initialiser la collection',
        objectBeginYear: 2025,
        objectEndYear: 2025,
        objectType: 'Exemple',
        period: 'Contemporain',
        country: 'Planète Terre',
        medium: 'Numérique',
        dimension: 'Variable',
        classification: 'Exemple',
      );

      // Ajout de l'artefact exemple
      await _firestore
          .collection('artifacts')
          .doc(sampleArtifact.id)
          .set(sampleArtifact.toFirestore());

      print('Collection "artifacts" créée avec succès avec un artefact exemple');
      print('Vous pouvez maintenant ajouter d\'autres artefacts à cette collection');
    } catch (e) {
      print('Erreur lors de la création de la collection "artifacts": $e');
    }
  }

  /// Fonction utilitaire pour supprimer la collection (utile pour les tests)
  Future<void> deleteArtifactsCollection() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('artifacts').get();
      WriteBatch batch = _firestore.batch();

      for (QueryDocumentSnapshot doc in snapshot.docs) {
        batch.delete(doc.reference);
      }

      await batch.commit();
      print('Collection "artifacts" supprimée avec succès');
    } catch (e) {
      print('Erreur lors de la suppression de la collection "artifacts": $e');
    }
  }

  /// Fonction pour vérifier si la collection existe et combien d'artefacts elle contient
  Future<void> checkCollectionStatus() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('artifacts').get();
      print('La collection "artifacts" contient ${snapshot.docs.length} artefacts');
      
      if (snapshot.docs.isNotEmpty) {
        print('Liste des IDs des artefacts:');
        for (QueryDocumentSnapshot doc in snapshot.docs) {
          print('- ${doc.id}');
        }
      }
    } catch (e) {
      print('Erreur lors de la vérification de la collection "artifacts": $e');
    }
  }
}