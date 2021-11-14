import 'package:flutter/material.dart';
import 'package:tonal_assessment/models/metric_bubble.dart';
import 'package:tonal_assessment/styles.dart';

class MetricBubbleItem extends StatelessWidget {
  final MetricBubble metric;

  const MetricBubbleItem({Key? key, required this.metric}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context);
    final isMobileDevice = deviceData.size.width < 900;
    final widgetDiameter =
        isMobileDevice ? bubbleDiameter.toDouble() / 2 : bubbleDiameter.toDouble();

    return Container(
      height: widgetDiameter,
      width: widgetDiameter,
      decoration: bubbleBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            metric.label,
            style: TextStyle(
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.bold,
              fontSize: isMobileDevice ? 9 : 19,
              color: Colors.white,
            ),
          ),
          Text(
            "${metric.weight}",
            style: TextStyle(
              fontFamily: 'League Gothic',
              fontSize: isMobileDevice ? 60 : 127,
              color: Colors.white,
            ),
          ),
          Text(
            metric.unit,
            style: TextStyle(
              fontFamily: 'League Gothic',
              fontSize: isMobileDevice ? 18 : 38,
              color: Color(0x80ffffff),
            ),
          )
        ],
      ),
    );
  }
}
