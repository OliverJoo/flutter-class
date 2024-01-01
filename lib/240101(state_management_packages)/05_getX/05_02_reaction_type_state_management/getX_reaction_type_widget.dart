import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getX_reaction_type_counter_controller.dart';

class GetXReactionWidget extends StatelessWidget {
  const GetXReactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<CounterController>(
      builder: (controller) => Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'GetX : ${controller.count}, ${controller.isChecked.value}. ${controller.title.value}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'GetX : ${controller.user.value.name}, ${controller.user.value.age}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.count.value++;
                  if (controller.title.value == 'hello') {
                    controller.title.value = 'world';
                  } else {
                    controller.title.value = 'hello';
                  }

                  controller.isChecked.value = !controller.isChecked.value;

                  if (controller.user.value.name == 'Oliver') {
                    controller.user.value.name = 'Oliver Joo';
                  } else {
                    controller.user.value.name = 'Oliver';
                  }
                },
                child: const Text('Change'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
