import 'package:wonders/models/artifact.dart';

class ArtifactService {
  static final ArtifactService _instance = ArtifactService._internal();
  factory ArtifactService() => _instance;
  ArtifactService._internal();

  static final List<Artifact> _artifacts = [
    Artifact(
      id: 'artifact_1',
      title: 'Aztec Sun Stone',
      description: 'The Aztec Sun Stone is a large monolithic sculpture that was carved by the Aztecs in the 15th century.',
      imageUrl: 'https://images.metmuseum.org/CRDImages/ao/original/DT11643.jpg',
      culture: 'Aztec',
      objectBeginYear: 1427,
      objectEndYear: 1519,
      wonderType: 'chichenItza',
    ),
    Artifact(
      id: 'artifact_2',
      title: 'Rosetta Stone',
      description: 'The Rosetta Stone is a granodiorite stele, found in 1799, inscribed with three versions of a decree issued at Memphis, Egypt, in 196 BC during the Ptolemaic dynasty on behalf of King Ptolemy V Epiphanes.',
      imageUrl: 'https://images.metmuseum.org/CRDImages/eg/original/DT227341.jpg',
      culture: 'Ptolemaic',
      objectBeginYear: -196,
      objectEndYear: -196,
      wonderType: 'pyramids',
    ),
    // Add more mock artifacts as needed
  ];

  Future<List<Artifact>> getArtifactsForWonder(String wonderType) async {
    return Future.value(
        _artifacts.where((artifact) => artifact.wonderType == wonderType).toList());
  }

  Future<Artifact?> getArtifactById(String id) async {
    try {
      return Future.value(
          _artifacts.firstWhere((artifact) => artifact.id == id));
    } catch (e) {
      return null;
    }
  }

  Future<List<Artifact>> getAllArtifacts() async {
    return Future.value(_artifacts);
  }
}
