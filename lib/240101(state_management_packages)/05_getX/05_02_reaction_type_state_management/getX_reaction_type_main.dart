import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getX_reaction_type_counter_controller.dart';
import 'getX_reaction_type_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Reaction-Type State Management Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetXReactionScreen(),
    );
  }
}

class GetXReactionScreen extends StatelessWidget {
  const GetXReactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Rx Practice'),
        ),
        body: const GetXReactionWidget(),
      ),
    );
  }
}
