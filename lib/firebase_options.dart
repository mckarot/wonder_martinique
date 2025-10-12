// Ce fichier est généralement généré automatiquement par Firebase CLI
// Vous devrez le remplacer avec votre fichier réel généré par Firebase CLI
// Pour l'instant, je vais créer un modèle vide pour que le code compile

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      // TODO: Remplacer avec les options de votre projet Firebase
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        // TODO: Remplacer avec les options de votre projet Firebase
        return android;
      case TargetPlatform.iOS:
        // TODO: Remplacer avec les options de votre projet Firebase
        return ios;
      case TargetPlatform.macOS:
        // TODO: Remplacer avec les options de votre projet Firebase
        return macos;
      case TargetPlatform.windows:
        // TODO: Remplacer avec les options de votre projet Firebase
        return windows;
      case TargetPlatform.linux:
        // TODO: Remplacer avec les options de votre projet Firebase
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBkhgs-k52K9XEi-xIF3g7At9T4ql5UynA',
    appId: '1:423368961031:web:d14b85645d29ec434d0ea2',
    messagingSenderId: '423368961031',
    projectId: 'wonders-martinique',
    authDomain: 'wonders-martinique.firebaseapp.com',
    storageBucket: 'wonders-martinique.firebasestorage.app',
    measurementId: 'G-15EN5S0QSD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4NgAPvRIp7tNKdngHIXaSEYP240gKxbM',
    appId: '1:423368961031:android:a1944d1c6a054b4d4d0ea2',
    messagingSenderId: '423368961031',
    projectId: 'wonders-martinique',
    storageBucket: 'wonders-martinique.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAgahg8FZGjwFsT9j9fMYcIbBdbrZrIMOc',
    appId: '1:423368961031:ios:6c402e93d1b697564d0ea2',
    messagingSenderId: '423368961031',
    projectId: 'wonders-martinique',
    storageBucket: 'wonders-martinique.firebasestorage.app',
    iosBundleId: 'com.gskinner.flutter.wonders',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAgahg8FZGjwFsT9j9fMYcIbBdbrZrIMOc',
    appId: '1:423368961031:ios:6c402e93d1b697564d0ea2',
    messagingSenderId: '423368961031',
    projectId: 'wonders-martinique',
    storageBucket: 'wonders-martinique.firebasestorage.app',
    iosBundleId: 'com.gskinner.flutter.wonders',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBkhgs-k52K9XEi-xIF3g7At9T4ql5UynA',
    appId: '1:423368961031:web:93af96b9ac52fd294d0ea2',
    messagingSenderId: '423368961031',
    projectId: 'wonders-martinique',
    authDomain: 'wonders-martinique.firebaseapp.com',
    storageBucket: 'wonders-martinique.firebasestorage.app',
    measurementId: 'G-SVWXW002ME',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'apiKey',
    appId: 'appId',
    messagingSenderId: 'messagingSenderId',
    projectId: 'projectId',
    storageBucket: 'storageBucket',
  );
}