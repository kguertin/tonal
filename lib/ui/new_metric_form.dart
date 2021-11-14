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
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            TextFormField(
              controller: labelInputController,
              decoration: const InputDecoration(label: Text("Label")),
            ),
            TextFormField(
              controller: weightInputController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text("Weight")),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () =>
                    addMetricBubble(labelInputController.text, weightInputController.text),
                child: const Text("Add Workout"),
              ),
            )
          ],
        ));
  }
}
