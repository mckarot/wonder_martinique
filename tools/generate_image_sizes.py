#!/usr/bin/env python3
"""
Script pour générer automatiquement les différentes tailles d'images
nécessaires pour les différentes densités d'écran dans Flutter.

Ce script prend une image de base (1.0x) et génère les versions
2.0x, 3.0x et 4.0x dans les dossiers appropriés.
"""

import os
from PIL import Image
import argparse
from pathlib import Path


def resize_image(input_path, output_path, scale_factor):
    """
    Redimensionne une image par un facteur d'échelle donné.
    
    Args:
        input_path: Chemin vers l'image d'entrée
        output_path: Chemin vers l'image de sortie
        scale_factor: Facteur d'échelle (1.0, 2.0, 3.0, 4.0)
    """
    with Image.open(input_path) as img:
        # Calculer les nouvelles dimensions
        new_size = (int(img.width * scale_factor), int(img.height * scale_factor))
        
        # Redimensionner l'image
        resized_img = img.resize(new_size, Image.Resampling.LANCZOS)
        
        # Sauvegarder l'image redimensionnée
        resized_img.save(output_path)
        print(f"  -> {output_path} ({new_size[0]}x{new_size[1]})")


def generate_image_sizes(image_path, base_dir="assets/images"):
    """
    Génère les différentes tailles d'une image dans les dossiers 2.0x, 3.0x et 4.0x.
    
    Args:
        image_path: Chemin vers l'image de base (1.0x)
        base_dir: Répertoire de base des images
    """
    image_path = Path(image_path)
    
    # Vérifier que l'image de base existe
    if not image_path.exists():
        print(f"Erreur : L'image de base {image_path} n'existe pas.")
        return
    
    # Récupérer le chemin relatif par rapport au dossier d'images
    relative_path = image_path.relative_to(base_dir)
    folder_path = relative_path.parent
    filename = relative_path.name
    
    print(f"Traitement de l'image : {filename}")
    
    # Créer les dossiers 2.0x, 3.0x et 4.0x s'ils n'existent pas
    densities = ["2.0x", "3.0x", "4.0x"]
    scale_factors = [2.0, 3.0, 4.0]
    
    for density in densities:
        density_path = Path(base_dir) / folder_path / density
        density_path.mkdir(parents=True, exist_ok=True)
    
    # Générer les différentes tailles
    for density, scale_factor in zip(densities, scale_factors):
        output_path = Path(base_dir) / folder_path / density / filename
        resize_image(image_path, output_path, scale_factor)


def process_all_images_in_folder(folder_path, base_dir="assets/images"):
    """
    Traite toutes les images d'un dossier pour générer les différentes tailles.
    
    Args:
        folder_path: Chemin du dossier à traiter (contenant les images 1.0x)
        base_dir: Répertoire de base des images
    """
    folder_path = Path(folder_path)
    
    # Extensions d'images supportées
    image_extensions = {'.png', '.jpg', '.jpeg', '.gif', '.bmp', '.tiff', '.webp'}
    
    # Parcourir tous les fichiers du dossier
    for file_path in folder_path.iterdir():
        if file_path.suffix.lower() in image_extensions:
            # Vérifier que le fichier n'est pas dans un sous-dossier de densité
            if not any(density in file_path.parts for density in ['2.0x', '3.0x', '4.0x']):
                generate_image_sizes(file_path, base_dir)


def main():
    parser = argparse.ArgumentParser(
        description="Générer automatiquement les différentes tailles d'images pour Flutter"
    )
    
    parser.add_argument(
        "action",
        choices=["generate", "process_folder"],
        help="Action à effectuer"
    )
    
    parser.add_argument(
        "path",
        help="Chemin vers l'image ou le dossier à traiter"
    )
    
    parser.add_argument(
        "--base-dir",
        default="assets/images",
        help="Répertoire de base des images (défaut: assets/images)"
    )
    
    args = parser.parse_args()
    
    if args.action == "generate":
        generate_image_sizes(args.path, args.base_dir)
    elif args.action == "process_folder":
        process_all_images_in_folder(args.path, args.base_dir)


if __name__ == "__main__":
    main()