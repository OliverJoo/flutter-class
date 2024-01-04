
import 'package:flutter/material.dart';

import 'my_data_model.dart';

class ConsumSubWidget1 extends StatelessWidget {
  MyDataModel1 model1;
  MyDataModel2 model2;
  Widget? child;

  ConsumSubWidget1(this.model1, this.model2, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'I am SubWidget1, ${model1.data}, ${model2.data}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          child!
        ],
      ),
    );
  }
}

class ConsumSubWidget2 extends StatelessWidget {
  const ConsumSubWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      padding: const EdgeInsets.all(20),
      child: const Text(
        'I am Subwidget2',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
