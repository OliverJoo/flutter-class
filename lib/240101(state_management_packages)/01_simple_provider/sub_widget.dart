
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class SubWidget extends StatelessWidget {
  const SubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = context.watch<Counter>();
    var sum = context.watch<Sum>();
    var stringData = context.watch<String>();

    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count : ${counter.count}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Sum : ${sum.sum}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'String :$stringData',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () => counter.increment(),
              child: const Text('Increment'),
            )
          ],
        ),
      ),
    );
  }
}