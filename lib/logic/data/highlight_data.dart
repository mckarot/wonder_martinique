import 'package:wonders/common_libs.dart';
import 'package:wonders/models/firestore_artifact.dart';
import 'package:wonders/services/firestore_artifact_service.dart';

class HighlightData {
  HighlightData({
    required this.title,
    required this.culture,
    required this.artifactId,
    required this.wonder,
    required this.date,
    required this.imageUrl,
    required this.imageUrlSmall,
    this.description = '',
    this.objectBeginYear = 0,
    this.objectEndYear = 0,
    this.objectType = '',
    this.period = '',
    this.country = '',
    this.medium = '',
    this.dimension = '',
    this.classification = '',
  });

  static HighlightData? fromId(String? id) {
    // Cette méthode sera mise à jour pour utiliser Firestore
    return null; // Pour l'instant, on retourne null, la logique sera dans le service
  }

  static Stream<List<HighlightData>> forWonderStream(WonderType wonder) {
    return FirestoreArtifactService()
        .getArtifactsForWonder(wonder.toString().split('.').last)
        .map((firestoreArtifacts) => 
          firestoreArtifacts.map((fa) => _fromFirestoreArtifact(fa)).toList()
        );
  }

  static List<HighlightData> fromFirestoreArtifacts(List<FirestoreArtifact> artifacts) {
    return artifacts.map((fa) => _fromFirestoreArtifact(fa)).toList();
  }

  static HighlightData _fromFirestoreArtifact(FirestoreArtifact fa) {
    return HighlightData(
      title: fa.title,
      culture: fa.culture,
      artifactId: fa.id, // Utiliser l'ID du document Firestore
      wonder: WonderType.values.firstWhere(
        (w) => w.toString().split('.').last == fa.wonderType,
        orElse: () => WonderType.chichenItza, // valeur par défaut
      ),
      date: fa.date,
      imageUrl: fa.imageUrl,
      imageUrlSmall: fa.imageUrlSmall,
      description: fa.description,
      objectBeginYear: fa.objectBeginYear,
      objectEndYear: fa.objectEndYear,
      objectType: fa.objectType,
      period: fa.period,
      country: fa.country,
      medium: fa.medium,
      dimension: fa.dimension,
      classification: fa.classification,
    );
  }

  final String title;
  final String culture;
  final String date;
  final String description;
  final int objectBeginYear;
  final int objectEndYear;
  final String objectType;
  final String period;
  final String country;
  final String medium;
  final String dimension;
  final String classification;

  late final ImageProvider icon;

  final String artifactId;
  final WonderType wonder;
  final String imageUrl;
  final String imageUrlSmall;

  String get id => artifactId;
  String get subtitle => wondersLogic.getData(wonder).artifactCulture;
}
