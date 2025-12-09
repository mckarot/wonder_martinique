import 'package:flutter/material.dart';
import 'dart:math';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/common/string_utils.dart';
import 'package:wonders/models/timeline_models.dart';
import 'package:wonders/ui/common/dashed_line.dart';

class CustomTimeline extends StatefulWidget {
  const CustomTimeline({
    super.key,
    required this.periods,
    required this.events,
    required this.startYear,
    required this.endYear,
    this.onYearChanged, required double minSize, required ScrollController scroller,
  });

  final List<TimelinePeriod> periods;
  final List<TimelineEventItem> events;
  final int startYear;
  final int endYear;
  final void Function(int year)? onYearChanged;

  @override
  State<CustomTimeline> createState() => _CustomTimelineState();
}

class _CustomTimelineState extends State<CustomTimeline> {
  final _scroller = ScrollController();
  int _currentYr = 0;

  @override
  void initState() {
    super.initState();
    _currentYr = widget.startYear;
    _scroller.addListener(_handleScrollChanged);
  }

  @override
  void dispose() {
    _scroller.removeListener(_handleScrollChanged);
    _scroller.dispose();
    super.dispose();
  }

  void _handleScrollChanged() {
    setState(() {
      _currentYr = _calculateYearFromScrollPos();
    });
    widget.onYearChanged?.call(_currentYr);
  }

  int _calculateYearFromScrollPos() {
    if (!_scroller.hasClients) return widget.startYear;
    final double totalYrs = (widget.endYear - widget.startYear).toDouble();
    final double scrollRatio = _scroller.position.pixels / _scroller.position.maxScrollExtent;
    return (widget.startYear + scrollRatio * totalYrs).round();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const double contentHeight = 3000;
        final double verticalPadding = constraints.maxHeight / 2;

        return Stack(
          children: [
            SingleChildScrollView(
              controller: _scroller,
              padding: EdgeInsets.symmetric(vertical: verticalPadding),
              child: SizedBox(
                height: contentHeight,
                width: double.infinity,
                child: Stack(
                  children: [
                    ..._buildYearMarkers(contentHeight),
                    ..._buildPeriodBars(contentHeight),
                    ..._buildEventMarkers(contentHeight),
                  ],
                ),
              ),
            ),
            // Add the dashed line and year display back
            IgnorePointer(
              child: Center(
                child: _DashedDividerWithYear(year: _currentYr),
              ),
            ),
          ],
        );
      },
    );
  }

  List<Widget> _buildYearMarkers(double contentHeight) {
    final List<Widget> markers = [];
    final int totalYrs = widget.endYear - widget.startYear;
    const int interval = 50; // Smaller interval for more markers
    final int numMarkers = (totalYrs / interval).floor();

    for (int i = 0; i <= numMarkers; i++) {
      final int year = widget.startYear + (i * interval);
      final double yearFraction = (year - widget.startYear) / totalYrs;
      final double top = yearFraction * contentHeight;

      markers.add(
        Positioned(
          top: top,
          left: $styles.insets.lg,
          child: Text(
            year.toString(),
            style: $styles.text.body.copyWith(color: $styles.colors.offWhite),
          ),
        ),
      );
    }
    return markers;
  }

  List<Widget> _buildPeriodBars(double contentHeight) {
    final List<Widget> bars = [];
    final int totalYrs = widget.endYear - widget.startYear;

    for (final period in widget.periods) {
      final double startFraction = (period.startYr - widget.startYear) / totalYrs;
      final double durationFraction = (period.endYr - period.startYr) / totalYrs;

      final double top = startFraction * contentHeight;
      final double height = durationFraction * contentHeight;

      bars.add(
        Positioned(
          top: top,
          left: 120, // To the right of the year markers
          right: $styles.insets.lg,
          height: max(1, height), // Ensure height is at least 1
          child: Container(
            decoration: BoxDecoration(
              color: period.color.withOpacity(0.8),
              borderRadius: BorderRadius.circular($styles.corners.md),
            ),
          ),
        ),
      );
    }
    return bars;
  }

    List<Widget> _buildEventMarkers(double contentHeight) {
    final List<Widget> markers = [];
    final int totalYrs = widget.endYear - widget.startYear;

    for (final event in widget.events) {
      final double top = ((event.year - widget.startYear) / totalYrs) * contentHeight;
      markers.add(
        Positioned(
          top: top,
          left: 120,
          right: 0,
          child: Row(
            children: [
              const Icon(Icons.circle, color: Colors.white, size: 8),
              Gap($styles.insets.sm),
              Text(event.description, style: $styles.text.body.copyWith(color: Colors.white)),
            ],
          ),
        ),
      );
    }
    return markers;
  }
}

class _DashedDividerWithYear extends StatelessWidget {
  const _DashedDividerWithYear({required this.year});
  final int year;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: DashedLine()),
        Gap($styles.insets.sm),
        Text(
          StringUtils.formatYr(year),
          style: $styles.text.h2.copyWith(color: $styles.colors.offWhite),
        ),
        Gap($styles.insets.sm),
        const Expanded(child: DashedLine()),
      ],
    );
  }
}
