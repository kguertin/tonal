import 'package:flutter/material.dart';
import 'package:tonal_assessment/ui/metric_bubble.dart';
import 'package:tonal_assessment/ui/new_metric_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tonal Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tonal Assessment'),
      ),
      body: Container(
          child: Column(
        children: [MetricBubble(), NewMetricForm()],
      )),
    );
  }
}
