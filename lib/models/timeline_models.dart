import 'package:flutter/material.dart';

@immutable
class TimelinePeriod {
  const TimelinePeriod({
    required this.startYr,
    required this.endYr,
    required this.title,
    required this.color,
  });

  final int startYr;
  final int endYr;
  final String title;
  final Color color;
}

@immutable
class TimelineEventItem {
  const TimelineEventItem({
    required this.year,
    required this.description,
  });

  final int year;
  final String description;
}
