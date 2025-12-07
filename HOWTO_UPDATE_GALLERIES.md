# Comment mettre à jour les chemins d'images des galeries

Ce document explique comment mettre à jour automatiquement les chemins d'images pour les galeries de photos de chaque merveille.

## Prérequis

Assurez-vous que toutes vos nouvelles images sont placées dans les sous-dossiers appropriés sous `assets/images/wonder_galleries/`.
Par exemple, pour les images du Colisée, placez-les dans `assets/images/wonder_galleries/colosseum/`.

## Étapes pour mettre à jour les chemins d'images

1.  **Ouvrez votre terminal** à la racine de votre projet Flutter.

2.  **Exécutez le script de génération de chemins d'images** avec la commande suivante :

    ```bash
    dart lib/_tools/generate_image_paths.dart
    ```

    Ce script va parcourir tous les dossiers de `assets/images/wonder_galleries/`, lister les images qu'ils contiennent, et mettre à jour automatiquement la propriété `localImagePaths` dans les fichiers de données des merveilles correspondantes (par exemple, `lib/logic/data/wonders_data/colosseum_data.dart`).

3.  **Vérifiez les changements (facultatif mais recommandé) :**
    Vous pouvez vérifier les fichiers de données des merveilles modifiés pour vous assurer que les chemins d'images sont correctement mis à jour.

4.  **Relancez votre application Flutter :**
    Pour que les nouveaux chemins d'images soient pris en compte par l'application, vous devez la relancer (un "Hot Reload" ne suffira pas toujours, un "Hot Restart" ou un redémarrage complet est préférable).

## Important

*   Le script s'attend à ce que les noms des sous-dossiers (`assets/images/wonder_galleries/nom_merveille/`) correspondent aux noms des fichiers de données des merveilles (par exemple, `nom_merveille_data.dart`). Si vous avez des noms de dossiers complexes, le script tente de les normaliser (par exemple, `great_wall_of_china` devient `great_wall`).
*   Ce script met à jour uniquement la liste `localImagePaths`. Il n'ajoute pas ou ne supprime pas les fichiers images eux-mêmes.
*   Assurez-vous que vos fichiers `.jpg` et `.png` sont correctement nommés et ne contiennent pas de caractères spéciaux qui pourraient poser problème.
