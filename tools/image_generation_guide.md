# Guide de Génération Automatique des Images pour Flutter Wonderous App

## Présentation

Ce guide explique comment utiliser le script Python `generate_image_sizes.py` pour automatiquement générer les différentes tailles d'images nécessaires pour les différentes densités d'écran dans Flutter.

## Installation des dépendances

Avant d'utiliser le script, vous devez installer les dépendances Python nécessaires :

```bash
pip install -r tools/requirements.txt
```

## Structure des dossiers

Le script s'attend à ce que les images soient organisées dans une structure comme celle-ci :

```
assets/images/
├── great_wall_of_china/
│   ├── great-wall.png (image 1.0x)
│   ├── 2.0x/
│   │   └── great-wall.png
│   ├── 3.0x/
│   │   └── great-wall.png
│   └── 4.0x/
│       └── great-wall.png
├── chichen_itza/
├── christ_the_redeemer/
└── ...
```

## Utilisation du script

Le script offre deux modes d'utilisation :

### 1. Générer les tailles pour une seule image

```bash
python3 tools/generate_image_sizes.py generate assets/images/great_wall_of_china/great-wall.png
```

Cette commande générera les versions 2.0x, 3.0x et 4.0x de l'image spécifiée dans les dossiers correspondants.

### 2. Traiter toutes les images d'un dossier

```bash
python3 tools/generate_image_sizes.py process_folder assets/images/great_wall_of_china/
```

Cette commande traitera toutes les images du dossier spécifié (sauf celles déjà dans les sous-dossiers de densité) pour générer les versions 2.0x, 3.0x et 4.0x.

### Options

- `--base-dir`: Spécifie le répertoire de base des images (par défaut: `assets/images`)

Exemple avec option personnalisée :

```bash
python3 tools/generate_image_sizes.py generate assets/images/great_wall_of_china/great-wall.png --base-dir assets/images
```

## Processus de génération

1. Le script identifie l'image de base (1.0x) dans le dossier spécifié
2. Il calcule les dimensions pour les densités 2.0x, 3.0x et 4.0x
3. Il redimensionne l'image en utilisant une interpolation de haute qualité (Lanczos)
4. Il enregistre les versions redimensionnées dans les sous-dossiers correspondants
5. Il affiche les détails des images générées

## Bonnes pratiques

1. **Qualité**: Le script utilise l'interpolation Lanczos pour préserver la qualité des images lors du redimensionnement.

2. **Performance**: Les images sont générées rapidement, mais le processus peut prendre plus de temps pour les images très grandes ou en grand nombre.

3. **Gestion des fichiers**: Le script ne remplace pas les images existantes automatiquement. Si vous générez des images pour un dossier qui contient déjà certaines tailles, celles-ci seront écrasées.

4. **Formats supportés**: Le script supporte les formats d'images suivants : PNG, JPG, JPEG, GIF, BMP, TIFF, WEBP.

5. **Intégration dans Flutter**: Assurez-vous que vos chemins d'images sont correctement référencés dans le fichier `pubspec.yaml`.

## Exemple d'utilisation

Supposons que vous ayez ajouté une nouvelle image `new-image.png` dans le dossier `assets/images/great_wall_of_china/` et que vous souhaitiez générer les différentes tailles :

```bash
python3 tools/generate_image_sizes.py generate assets/images/great_wall_of_china/new-image.png
```

Le script créera automatiquement :
- `assets/images/great_wall_of_china/2.0x/new-image.png`
- `assets/images/great_wall_of_china/3.0x/new-image.png`
- `assets/images/great_wall_of_china/4.0x/new-image.png`

## Remarques

1. Les images générées conserveront la même extension de fichier que l'originale.

2. Les dimensions des images redimensionnées seront arrondies aux nombres entiers les plus proches.

3. Ce script peut être intégré dans vos processus d'intégration continue ou dans vos scripts de build si nécessaire.

## Dépannage

Si vous rencontrez une erreur concernant une bibliothèque manquante, assurez-vous d'avoir installé les dépendances avec la commande :
```bash
pip install -r tools/requirements.txt
```

Si le script ne trouve pas vos images, vérifiez que vous utilisez des chemins relatifs corrects par rapport au répertoire de base des images.