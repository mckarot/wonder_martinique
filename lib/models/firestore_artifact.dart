import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreArtifact {
  final String id;
  final String title;
  final String culture;
  final String date;
  final String artifactId;
  final String wonderType;
  final String imageUrl;
  final String imageUrlSmall;
  final String description;
  final int objectBeginYear;
  final int objectEndYear;
  final String objectType;
  final String period;
  final String country;
  final String medium;
  final String dimension;
  final String classification;

  FirestoreArtifact({
    required this.id,
    required this.title,
    required this.culture,
    required this.date,
    required this.artifactId,
    required this.wonderType,
    required this.imageUrl,
    required this.imageUrlSmall,
    required this.description,
    required this.objectBeginYear,
    required this.objectEndYear,
    required this.objectType,
    required this.period,
    required this.country,
    required this.medium,
    required this.dimension,
    required this.classification,
  });

  factory FirestoreArtifact.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final data = snapshot.data()!;
    return FirestoreArtifact(
      id: snapshot.id,
      title: data['title'] ?? '',
      culture: data['culture'] ?? '',
      date: data['date'] ?? '',
      artifactId: data['artifactId'] ?? '',
      wonderType: data['wonderType'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      imageUrlSmall: data['imageUrlSmall'] ?? '',
      description: data['description'] ?? '',
      objectBeginYear: data['objectBeginYear']?.toInt() ?? 0,
      objectEndYear: data['objectEndYear']?.toInt() ?? 0,
      objectType: data['objectType'] ?? '',
      period: data['period'] ?? '',
      country: data['country'] ?? '',
      medium: data['medium'] ?? '',
      dimension: data['dimension'] ?? '',
      classification: data['classification'] ?? '',
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'culture': culture,
      'date': date,
      'artifactId': artifactId,
      'wonderType': wonderType,
      'imageUrl': imageUrl,
      'imageUrlSmall': imageUrlSmall,
      'description': description,
      'objectBeginYear': objectBeginYear,
      'objectEndYear': objectEndYear,
      'objectType': objectType,
      'period': period,
      'country': country,
      'medium': medium,
      'dimension': dimension,
      'classification': classification,
    };
  }
}