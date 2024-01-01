import 'package:flutter/material.dart';
import 'package:flutter_class/dust_info/main.dart';
import 'package:provider/provider.dart';

import 'counter.dart';
import 'sub_widget.dart';

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
      home: const ProvPracticeScreen(),
    );
  }
}

class ProvPracticeScreen extends StatelessWidget {
  const ProvPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProxyProvider Test'),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<Counter>.value(
            value: Counter(),
          ),
          ProxyProvider<Counter, Sum>(update: (context, model, sum) {
            if (sum != null) {
              sum.sum = model.count;
              return sum;
            } else {
              return Sum(model);
            }
          }),
          ProxyProvider2<Counter, Sum, String>(
              update: (context, model1, model2, data) {
            return 'count : ${model1.count}, sum : ${model2.sum}';
          }),
        ],
        child: const SubWidget(),
      ),
    );
  }
}
