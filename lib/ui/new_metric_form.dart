import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewMetricForm extends StatelessWidget {
  final Function addMetricBubble;

  const NewMetricForm({Key? key, required this.addMetricBubble}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final labelInputController = TextEditingController();
    final weightInputController = TextEditingController();

    return Container(
        child: Column(
      children: [
        TextFormField(
          controller: labelInputController,
        ),
        TextFormField(
          controller: weightInputController,
          keyboardType: TextInputType.number,
        ),
        ElevatedButton(
          onPressed: () => addMetricBubble(labelInputController.text, weightInputController.text),
          child: const Text("Add Workout"),
        )
      ],
    ));
  }
}
