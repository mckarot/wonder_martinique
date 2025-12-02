import 'package:flutter/foundation.dart';
import 'package:wonders/logic/data/wonder_type.dart';

@immutable
class Merchant {
  const Merchant({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.wonderType,
    this.website,
  });

  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final String description;
  final WonderType wonderType;
  final String? website;
}
