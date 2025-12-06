import 'dart:io';

void main() async {
  final galleriesDir = Directory('assets/images/wonder_galleries');
  if (!await galleriesDir.exists()) {
    print('Directory not found: ${galleriesDir.path}');
    return;
  }

  final wonders = await galleriesDir.list().toList();
  for (final wonderDir in wonders) {
    if (wonderDir is Directory) {
      final wonderName = wonderDir.path.split('/').last;
      final dataFileName = _getDataFileName(wonderName);
      if (dataFileName == null) {
        print('Skipping $wonderName: no mapping found.');
        continue;
      }
      final dataFile = File('lib/logic/data/wonders_data/$dataFileName');
      if (await dataFile.exists()) {
        print('Updating ${dataFile.path}...');
        final imageFiles = await wonderDir
            .list()
            .where((item) => item is File && (item.path.endsWith('.jpg') || item.path.endsWith('.png')))
            .map((item) => "'${item.path}',")
            .toList();

        String content = await dataFile.readAsString();
        final regex = RegExp(r'localImagePaths: const \[.*?]', multiLine: true, dotAll: true);
        final newPaths = 'localImagePaths: const [\n      ${imageFiles.join('\n      ')}\n    ]';
        content = content.replaceFirst(regex, newPaths);
        await dataFile.writeAsString(content);
        print('Updated ${dataFile.path} successfully.');
      } else {
        print('File not found for $wonderName: ${dataFile.path}');
      }
    }
  }
}

String? _getDataFileName(String wonderName) {
  final map = {
    'chichen_itza': 'chichen_itza_data.dart',
    'christ_the_redeemer': 'christ_redeemer_data.dart',
    'colosseum': 'colosseum_data.dart',
    'great_wall_of_china': 'great_wall_data.dart',
    'machu_picchu': 'machu_picchu_data.dart',
    'petra': 'petra_data.dart',
    'pyramids': 'pyramids_giza_data.dart',
    'taj_mahal': 'taj_mahal_data.dart',
  };
  return map[wonderName];
}
