import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class ImageService {
  static final Logger _logger = Logger('ImageService');

  Future<List<String>> getImagesForWonder(String wonderId) async {
    _logger.fine('Appel de getImagesForWonder pour wonderId: $wonderId');
    // Return a list of placeholder images
    return Future.value([
      'https://via.placeholder.com/600x400',
      'https://via.placeholder.com/600x400',
      'https://via.placeholder.com/600x400',
      'https://via.placeholder.com/600x400',
      'https://via.placeholder.com/600x400',
    ]);
  }
}
