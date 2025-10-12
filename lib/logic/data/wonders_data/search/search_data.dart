import 'package:wonders/logic/data/artifact_data.dart';

class SearchData {
  const SearchData(this.year, this.id, this.title, this.keywords, [this.aspectRatio = 0]);

  final int year;
  final int id;
  final String keywords;
  final String title;
  final double aspectRatio;

  String get imageUrl => ArtifactData(
    objectId: '$id',
    title: '',
    image: '',
    date: '',
    period: '',
    country: '',
    medium: '',
    dimension: '',
    classification: '',
    culture: '',
    objectType: '',
    objectBeginYear: 0,
    objectEndYear: 0,
  ).selfHostedImageUrl;
  String get imageUrlSmall => ArtifactData(
    objectId: '$id',
    title: '',
    image: '',
    date: '',
    period: '',
    country: '',
    medium: '',
    dimension: '',
    classification: '',
    culture: '',
    objectType: '',
    objectBeginYear: 0,
    objectEndYear: 0,
  ).selfHostedImageUrlSmall;

  // used by the search helper tool:
  String write() => "SearchData($year, $id, '$title', '$keywords')";
}
