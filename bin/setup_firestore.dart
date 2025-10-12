import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wonders/firebase_options.dart';

void main() async {
  // Initialiser Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  try {
    // Vérifier si la collection existe en vérifiant s'il y a des documents
    final snapshot = await firestore.collection('artifacts').limit(1).get();
    
    if (snapshot.docs.isEmpty) {
      // Créer un document exemple dans la collection 'artifacts'
      await firestore.collection('artifacts').doc('sample_artifact').set({
        'id': 'sample_artifact',
        'title': 'Artefact Exemple',
        'culture': 'Exemple',
        'date': '2025',
        'artifactId': 'sample_001',
        'wonderType': 'chichenItza',
        'imageUrl': 'https://via.placeholder.com/400x600.png',
        'imageUrlSmall': 'https://via.placeholder.com/200x300.png',
        'description': 'Ceci est un artefact d\'exemple pour initialiser la collection',
        'objectBeginYear': 2025,
        'objectEndYear': 2025,
        'objectType': 'Exemple',
        'period': 'Contemporain',
        'country': 'Planète Terre',
        'medium': 'Numérique',
        'dimension': 'Variable',
        'classification': 'Exemple',
      });

      print('Collection "artifacts" créée avec succès avec un artefact exemple!');
    } else {
      print('La collection "artifacts" existe déjà.');
    }
    
    print('Vous pouvez maintenant ajouter d\'autres artefacts à cette collection');
  } catch (e) {
    print('Erreur lors de la tentative de création de la collection "artifacts": $e');
    print('Assurez-vous que vos options Firebase sont correctement configurées dans firebase_options.dart');
  }

  // Terminer proprement
  exit(0);
}