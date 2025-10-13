import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:wonders/firebase_options.dart';

void main() async {
  // Initialisation de Flutter et Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final collection = firestore.collection('artifacts');

  // Données du nouvel artefact
  final artifactData = {
    'id': '313341',
    'title': 'Pendentif disque',
    'culture': 'Maya',
    'date': 'IXe-XIIIe siècle',
    'artifactId': '313341_mayan_pendant',
    'wonderType': 'chichenItza',
    'imageUrl': 'https://images.metmuseum.org/CRDImages/ao/original/DP-1273-001.jpg',
    'imageUrlSmall': 'https://images.metmuseum.org/CRDImages/ao/mobile-large/DP-1273-001.jpg',
    'description': 'Ce pendentif en coquillage, probablement porté comme ornement de poitrine, représente une figure assise de profil, richement vêtue. Le personnage porte une coiffe élaborée et tient un bâton de cérémonie. De tels objets étaient des symboles de statut et de pouvoir dans la société maya.',
    'objectBeginYear': 800,
    'objectEndYear': 1250,
    'objectType': 'Pendentif',
    'period': 'Classique tardif - Postclassique précoce',
    'country': 'Mexique',
    'medium': 'Coquillage',
    'dimension': 'H. 10.2 x l. 10.2 cm',
    'classification': 'Ornements'
  };

  final String docId = artifactData['id'] as String;

  try {
    // Vérifier si le document existe déjà
    final doc = await collection.doc(docId).get();

    if (doc.exists) {
      print('L\'artefact avec l\'ID $docId existe déjà. Aucune action n\'a été effectuée.');
    } else {
      // Ajouter le document
      await collection.doc(docId).set(artifactData);
      print('Artefact "$docId: ${artifactData['title']}" ajouté avec succès à la collection "artifacts" !');
    }
  } catch (e) {
    print('Une erreur est survenue lors de l\'ajout de l\'artefact : $e');
  }

  // Terminer le script
  exit(0);
}
