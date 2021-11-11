import 'package:flutter/material.dart';

class MetricBubble {
  final String label;
  final int weight;
  final String unit = 'lbs';
  final Image background = Image.asset('');

  MetricBubble({
    required this.label,
    required this.weight,
  });
}
