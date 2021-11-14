import 'package:flutter/material.dart';
import 'package:tonal_assessment/models/metric_bubble.dart';
import 'package:tonal_assessment/ui/metric_bubble.dart';

class MetricBubbleDisplay extends StatelessWidget {
  final List<MetricBubble> metricBubbles;
  MetricBubbleDisplay({Key? key, required this.metricBubbles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: metricBubbles.map((metric) => MetricBubbleItem(metric: metric)).toList(),
        ),
      ),
    );
  }
}
