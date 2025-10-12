# Guide : Initialiser la collection Firestore `artifacts`

Ce guide explique comment lancer le script d'initialisation pour créer la collection `artifacts` dans votre base de données Firestore.

## 1. Le Script d'initialisation

Le script se trouve dans `bin/setup_firestore.dart`. Voici son contenu final et fonctionnel :

```dart
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:wonders/firebase_options.dart';

void main() async {
  // S'assurer que le binding Flutter est initialisé
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialiser Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  try {
    // Vérifier si la collection existe déjà
    final snapshot = await firestore.collection('artifacts').limit(1).get();
    
    if (snapshot.docs.isEmpty) {
      // Créer un document exemple si la collection est vide
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

  // Terminer proprement le script
  exit(0);
}
```

## 2. Commande d'exécution

Pour lancer le script, utilisez la commande suivante à la racine du projet :

```bash
flutter run bin/setup_firestore.dart
```

## 3. Dépannage (Mémo)

Voici les erreurs rencontrées et comment les résoudre :

### Erreur 1 : `dart:ui is not available`

- **Cause** : Le script a été lancé avec `dart run`. Cette commande exécute un script Dart pur et ne peut pas utiliser les bibliothèques du framework Flutter comme `dart:ui`.
- **Solution** : Toujours utiliser `flutter run` pour les scripts qui dépendent des packages Flutter (comme Firebase).

### Erreur 2 : `Binding has not yet been initialized`

- **Cause** : Le script utilise des plugins Firebase qui nécessitent une communication avec la plateforme native (iOS/Android). Cette communication requiert que "l'environnement Flutter" soit initialisé en amont.
- **Solution** : Ajouter `WidgetsFlutterBinding.ensureInitialized();` au tout début de la fonction `main()` pour garantir que cette initialisation est faite avant tout autre appel.

## 4. Résultat attendu

Si tout se passe bien, vous devriez voir les messages suivants dans votre console, confirmant que la collection a été créée ou qu'elle existait déjà :

```
flutter: Collection "artifacts" créée avec succès avec un artefact exemple!
flutter: Vous pouvez maintenant ajouter d'autres artefacts à cette collection
```
