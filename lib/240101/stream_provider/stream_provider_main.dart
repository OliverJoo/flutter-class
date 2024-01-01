import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'stream_sub_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StremPracticeScreen(),
    );
  }
}

class StremPracticeScreen extends StatelessWidget {
  const StremPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider & Stream Provider'),
      ),
      body: MultiProvider(
        providers: [
          FutureProvider<String>(
            create: (context) =>
                Future.delayed(const Duration(seconds: 5), () => 'World'),
            initialData: 'hello',
          ),
          StreamProvider<int>(
            create: (context) => streamFun(),
            initialData: 0,
          ),
        ],
        child: const SubWidget(),
      ),
    );
  }
}

Stream<int> streamFun() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
