import 'package:flutter/material.dart';
import 'package:tonal_assessment/ui/metric_bubble_display.dart';
import 'package:tonal_assessment/ui/new_metric_form.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tonal Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tonal Assessment'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            MetricBubbleDisplay(),
            NewMetricForm(),
          ],
        ),
      ),
    );
  }
}
