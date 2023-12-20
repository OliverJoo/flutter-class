import 'dart:async';

import 'package:flutter/material.dart';

import 'stop_watch_screen.dart';

void main() {
  // Timer.periodic(Duration(seconds: 1), (timer) {
  //   print('!!!');
  // });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StopWatchScreen(),
    );
  }
}
