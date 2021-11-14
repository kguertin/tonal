import 'package:flutter/material.dart';
import 'package:tonal_assessment/models/metric_bubble.dart';
import 'package:tonal_assessment/ui/metric_bubble_display.dart';
import 'package:tonal_assessment/ui/new_metric_form.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tonal Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final List<MetricBubble> metric_bubbles = [MetricBubble(label: "Upper Body", weight: 250)];

  void addMetricBubble(String label, String weight) {
    setState(() {
      metric_bubbles.add(
        MetricBubble(
          label: label,
          weight: int.parse(weight),
        ),
      );
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tonal Assessment'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              MetricBubbleDisplay(
                metricBubbles: metric_bubbles,
              ),
              NewMetricForm(
                addMetricBubble: addMetricBubble,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
