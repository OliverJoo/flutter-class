
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getX_simple_counter_controller.dart';

class GetXWidget extends StatelessWidget {
  const GetXWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      builder: (controller) {
        return Container(
          color: Colors.deepOrange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GetX : ${controller.count}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: const Text('Increment')),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text('Decrement')),
              ],
            ),
          ),
        );
      },
    );
  }
}