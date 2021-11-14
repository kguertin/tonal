import 'package:flutter/material.dart';
import 'package:tonal_assessment/models/metric_bubble.dart';
import 'package:tonal_assessment/ui/metric_bubble.dart';

class MetricBubbleDisplay extends StatelessWidget {
  MetricBubbleDisplay({Key? key}) : super(key: key);

  final List<MetricBubble> metric_bubbles = [MetricBubble(label: "Upper Body", weight: 250)];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: metric_bubbles.map((metric) => MetricBubbleItem(metric: metric)).toList(),
      ),
    );
  }
}
