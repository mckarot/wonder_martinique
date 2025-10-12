import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wonders/firebase_options.dart';

/// Script pour créer la collection 'artifacts' dans Firestore
/// avec un ou plusieurs documents d'exemple
void main() async {
  print('Initialisation du script de création de la collection "artifacts"...');

  // Initialiser Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  try {
    // Vérifier si la collection existe déjà en vérifiant s'il y a des documents
    final snapshot = await firestore.collection('artifacts').limit(1).get();

    if (snapshot.docs.isNotEmpty) {
      print('La collection "artifacts" existe déjà avec des documents.');
      print('Souhaitez-vous continuer et ajouter un document d\'exemple ? (y/n)');
      String? input = stdin.readLineSync();
      
      if (input?.toLowerCase() != 'y') {
        print('Opération annulée.');
        return;
      }
    } else {
      // Créer un document exemple dans la collection 'artifacts'
      // Utilisant la structure complète identifiée dans le projet
      await firestore.collection('artifacts').doc('example_artifact').set({
        'title': 'Exemple d\'artefact',
        'culture': 'Culture générique',
        'date': 'Date inconnue',
        'artifactId': 'example_001',
        'wonderType': 'Type générique',
        'imageUrl': 'https://via.placeholder.com/400x600.png',
        'imageUrlSmall': 'https://via.placeholder.com/200x300.png',
        'description': 'Ceci est un artefact d\'exemple pour la collection.',
        'objectBeginYear': 2000,
        'objectEndYear': 2020,
        'objectType': 'Objet',
        'period': 'Période moderne',
        'country': 'Pays inconnu',
        'medium': 'Médium inconnu',
        'dimension': 'Dimensions inconnues',
        'classification': 'Classification générique',
      });

      print('Document d\'exemple ajouté à la collection "artifacts" avec succès !');
    }

    print('Souhaitez-vous ajouter un autre artefact ? (y/n)');
    String? addMore = stdin.readLineSync();
    
    if (addMore?.toLowerCase() == 'y') {
      await addMoreArtifacts(firestore);
    }
  } catch (e) {
    print('Erreur lors de la tentative de création de la collection "artifacts": $e');
    print('Assurez-vous que vos options Firebase sont correctement configurées dans firebase_options.dart');
  }

  print('Fin du script de création de la collection "artifacts".');
  exit(0);
}

/// Fonction pour ajouter plusieurs artefacts
Future<void> addMoreArtifacts(FirebaseFirestore firestore) async {
  print('Ajout d\'artefacts supplémentaires...');
  
  while (true) {
    print('Souhaitez-vous ajouter un nouvel artefact ? (y/n)');
    String? continueInput = stdin.readLineSync();
    
    if (continueInput?.toLowerCase() != 'y') {
      break;
    }

    print('Entrez les détails de l\'artefact :');
    
    print('ID de l\'artefact (ex: artifact_002) :');
    String? id = stdin.readLineSync();
    if (id == null || id.isEmpty) {
      print('ID invalide, utilisation de "temp_artifact"');
      id = 'temp_artifact';
    }
    
    print('Titre de l\'artefact :');
    String? title = stdin.readLineSync();
    if (title == null) title = 'Titre inconnu';
    
    print('Culture de l\'artefact :');
    String? culture = stdin.readLineSync();
    if (culture == null) culture = 'Culture inconnue';
    
    print('Date de l\'artefact :');
    String? date = stdin.readLineSync();
    if (date == null) date = 'Date inconnue';
    
    print('Type de merveille (wonderType) :');
    String? wonderType = stdin.readLineSync();
    if (wonderType == null) wonderType = 'Type inconnu';
    
    print('URL de l\'image principale :');
    String? imageUrl = stdin.readLineSync();
    if (imageUrl == null) imageUrl = 'https://via.placeholder.com/400x600.png';
    
    print('URL de l\'image petite :');
    String? imageUrlSmall = stdin.readLineSync();
    if (imageUrlSmall == null) imageUrlSmall = 'https://via.placeholder.com/200x300.png';
    
    print('Description de l\'artefact :');
    String? description = stdin.readLineSync();
    if (description == null) description = 'Description non fournie';
    
    print('Année de début de création (ex: 1500) :');
    String? beginYearInput = stdin.readLineSync();
    int beginYear = int.tryParse(beginYearInput ?? '0') ?? 0;
    
    print('Année de fin de création (ex: 1600) :');
    String? endYearInput = stdin.readLineSync();
    int endYear = int.tryParse(endYearInput ?? '0') ?? 0;
    
    print('Type d\'objet (objectType) :');
    String? objectType = stdin.readLineSync();
    if (objectType == null) objectType = 'Objet inconnu';
    
    print('Période :');
    String? period = stdin.readLineSync();
    if (period == null) period = 'Période inconnue';
    
    print('Pays :');
    String? country = stdin.readLineSync();
    if (country == null) country = 'Pays inconnu';
    
    print('Médium :');
    String? medium = stdin.readLineSync();
    if (medium == null) medium = 'Médium inconnu';
    
    print('Dimensions :');
    String? dimension = stdin.readLineSync();
    if (dimension == null) dimension = 'Dimensions inconnues';
    
    print('Classification :');
    String? classification = stdin.readLineSync();
    if (classification == null) classification = 'Classification générique';

    // ID de l'artefact
    String artifactId = 'artifact_${DateTime.now().millisecondsSinceEpoch}';

    // Créer le document dans Firestore
    await firestore.collection('artifacts').doc(id).set({
      'title': title,
      'culture': culture,
      'date': date,
      'artifactId': artifactId,
      'wonderType': wonderType,
      'imageUrl': imageUrl,
      'imageUrlSmall': imageUrlSmall,
      'description': description,
      'objectBeginYear': beginYear,
      'objectEndYear': endYear,
      'objectType': objectType,
      'period': period,
      'country': country,
      'medium': medium,
      'dimension': dimension,
      'classification': classification,
    });

    print('Nouvel artefact ajouté avec succès !');
  }
}