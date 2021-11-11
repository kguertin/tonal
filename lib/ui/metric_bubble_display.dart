import 'package:flutter/material.dart';
import 'package:tonal_assessment/models/metric_bubble.dart';
import 'package:tonal_assessment/styles.dart';

class MetricBubbleDisplay extends StatelessWidget {
  MetricBubbleDisplay({Key? key}) : super(key: key);

  final List<MetricBubble> metric_bubbles = [MetricBubble(label: "Upper Body", weight: 250)];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: metric_bubbles
            .map(
              (metric) => Container(
                padding: const EdgeInsets.all(20.0),
                decoration: bubbleBoxDecoration,
                child: Column(
                  children: [
                    Text(
                      metric.label,
                      style: labelTextStyle,
                    ),
                    Text(
                      "${metric.weight}",
                      style: weightTextStyle,
                    ),
                    Text(
                      metric.unit,
                      style: unitTextStyle,
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
