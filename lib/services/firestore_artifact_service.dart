import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wonders/models/firestore_artifact.dart';
import 'package:wonders/services/firebase_service.dart';

class FirestoreArtifactService {
  static final FirestoreArtifactService _instance = FirestoreArtifactService._internal();
  factory FirestoreArtifactService() => _instance;
  FirestoreArtifactService._internal();

  static const String collectionPath = 'artifacts';

  FirebaseFirestore get _firestore => FirebaseService().firestore;

  // Récupérer tous les artefacts pour une merveille spécifique
  Stream<List<FirestoreArtifact>> getArtifactsForWonder(String wonderType) {
    return _firestore
        .collection(collectionPath)
        .where('wonderType', isEqualTo: wonderType)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => FirestoreArtifact.fromFirestore(doc))
            .toList());
  }

  // Récupérer un artefact spécifique par ID
  Stream<FirestoreArtifact?> getArtifactById(String id) {
    return _firestore
        .collection(collectionPath)
        .doc(id)
        .snapshots()
        .map((doc) => doc.data() != null ? FirestoreArtifact.fromFirestore(doc) : null);
  }

  // Récupérer tous les artefacts
  Stream<List<FirestoreArtifact>> getAllArtifacts() {
    return _firestore
        .collection(collectionPath)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => FirestoreArtifact.fromFirestore(doc))
            .toList());
  }
}