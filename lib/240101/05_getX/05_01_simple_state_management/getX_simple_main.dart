import 'package:flutter/material.dart';
import 'package:flutter_class/dust_info/main.dart';
import 'package:get/get.dart';

import 'getX_simple_counter_controller.dart';
import 'getX_simple_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetXScreen(),
    );
  }
}

class GetXScreen extends StatelessWidget {
  const GetXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Practice'),
      ),
      body: GetBuilder(
        init: CounterController(),
        builder: (_) {
          return const GetXWidget();
        },
      ),
    );
  }
}


