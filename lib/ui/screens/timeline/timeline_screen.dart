import 'package:flutter/material.dart';
import 'package:wonders/common_libs.dart';
import 'package:wonders/logic/data/martinique_timeline_data.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Timeline of Martinique',
          style: $styles.text.h4.copyWith(color: $styles.colors.offWhite),
        ),
        backgroundColor: $styles.colors.black,
        leading: BackButton(color: $styles.colors.offWhite),
      ),
      body: Container(
        color: $styles.colors.black,
        child: ListView.builder(
          itemCount: martiniqueTimeline.length,
          itemBuilder: (context, index) {
            final event = martiniqueTimeline[index];
            return _TimelineEventItem(
              event: event,
              isLeftAligned: index.isEven,
            );
          },
        ),
      ),
    );
  }
}

class _TimelineEventItem extends StatefulWidget {
  const _TimelineEventItem({
    required this.event,
    required this.isLeftAligned,
  });

  final TimelineEvent event;
  final bool isLeftAligned;

  @override
  State<_TimelineEventItem> createState() => _TimelineEventItemState();
}

class _TimelineEventItemState extends State<_TimelineEventItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: $styles.times.med,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: widget.isLeftAligned ? const Offset(-0.2, 0) : const Offset(0.2, 0),
          end: Offset.zero,
        ).animate(_animation),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widget.isLeftAligned
                ? [
                    _EventCard(event: widget.event),
                    const _LineAndDot(),
                    const Spacer(),
                  ]
                : [
                    const Spacer(),
                    const _LineAndDot(),
                    _EventCard(event: widget.event),
                  ],
          ),
        ),
      ),
    );
  }
}

class _LineAndDot extends StatelessWidget {
  const _LineAndDot();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 2,
            color: $styles.colors.greyMedium,
          ),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: $styles.colors.accent1,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  const _EventCard({required this.event});

  final TimelineEvent event;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: $styles.colors.greyStrong,
        margin: EdgeInsets.symmetric(vertical: $styles.insets.sm, horizontal: $styles.insets.xs),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular($styles.corners.md),
          side: BorderSide(color: $styles.colors.accent1.withOpacity(0.5)),
        ),
        child: Padding(
          padding: EdgeInsets.all($styles.insets.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(event.icon, color: $styles.colors.accent1, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      event.date,
                      style: $styles.text.body.copyWith(
                        color: $styles.colors.offWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                event.event,
                style: $styles.text.h4.copyWith(color: $styles.colors.offWhite),
              ),
              const SizedBox(height: 8),
              Text(
                event.impact,
                style: $styles.text.bodySmall.copyWith(color: $styles.colors.greyMedium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}