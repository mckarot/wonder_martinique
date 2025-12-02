import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logging/logging.dart';
import 'package:wonders/firebase_options.dart';

final Logger _logger = Logger('FirebaseService');

class FirebaseService {
  static final FirebaseService _instance = FirebaseService._internal();
  factory FirebaseService() => _instance;
  FirebaseService._internal();

  late final FirebaseFirestore firestore;
  late final FirebaseStorage storage;

  Future<void> initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    firestore = FirebaseFirestore.instance;
    storage = FirebaseStorage.instance;
  }

  // Méthode pour obtenir l'URL de téléchargement d'un fichier
  Future<String> getDownloadUrl(String path) async {
    return await storage.ref(path).getDownloadURL();
  }
  
  // Méthode pour vérifier si la collection 'artifacts' existe
  Future<bool> checkArtifactsCollectionExists() async {
    try {
      final collection = await firestore.collection('artifacts').limit(1).get();
      return collection.docs.isNotEmpty;
    } catch (e) {
      _logger.severe('Erreur lors de la vérification de la collection: $e');
      return false;
    }
  }
}