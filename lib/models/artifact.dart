class Artifact {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String date;
  final String period;
  final String country;
  final String medium;
  final String dimension;
  final String classification;
  final String culture;
  final String objectType;
  final int objectBeginYear;
  final int objectEndYear;
  final String wonderType;

  Artifact({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.date = '',
    this.period = '',
    this.country = '',
    this.medium = '',
    this.dimension = '',
    this.classification = '',
    this.culture = '',
    this.objectType = '',
    this.objectBeginYear = 0,
    this.objectEndYear = 0,
    this.wonderType = '',
  });
}
