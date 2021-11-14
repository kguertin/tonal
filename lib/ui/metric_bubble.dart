import 'package:flutter/material.dart';
import 'package:tonal_assessment/models/metric_bubble.dart';
import 'package:tonal_assessment/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MetricBubbleItem extends StatelessWidget {
  final MetricBubble metric;

  const MetricBubbleItem({Key? key, required this.metric}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context);
    final isMobileDevice = deviceData.size.width < 900;
    final widgetDiameter =
        isMobileDevice ? bubbleDiameter.toDouble() / 2 : bubbleDiameter.toDouble();

    return Stack(
      children: [
        Container(
          height: widgetDiameter,
          width: widgetDiameter,
          decoration: bubbleBoxDecoration,
        ),
        Container(
          height: widgetDiameter,
          width: widgetDiameter,
          decoration: BoxDecoration(shape: bubbleBoxDecoration.shape),
          child: SvgPicture.asset(
            "assets/images/graph.svg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: widgetDiameter,
          width: widgetDiameter,
          decoration: BoxDecoration(shape: bubbleBoxDecoration.shape),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                metric.label,
                style: TextStyle(
                  fontFamily: labelTextStyle.fontFamily,
                  fontWeight: labelTextStyle.fontWeight,
                  fontSize: isMobileDevice ? labelTextStyle.fontSize! / 2 : labelTextStyle.fontSize,
                  color: labelTextStyle.color,
                ),
              ),
              Text(
                "${metric.weight}",
                style: TextStyle(
                  fontFamily: weightTextStyle.fontFamily,
                  fontSize:
                      isMobileDevice ? weightTextStyle.fontSize! / 2 : weightTextStyle.fontSize,
                  color: weightTextStyle.color,
                ),
              ),
              Text(
                metric.unit,
                style: TextStyle(
                  fontFamily: unitTextStyle.fontFamily,
                  fontSize: isMobileDevice ? unitTextStyle.fontSize! / 2 : unitTextStyle.fontSize,
                  color: unitTextStyle.color,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
