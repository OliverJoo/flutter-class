import 'package:flutter/material.dart';
import 'package:flutter_class/dust_info/main.dart';
import 'package:provider/provider.dart';

import 'consumer_widget.dart';
import 'my_data_model.dart';

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
      home: const ConsumPracticeScreen(),
    );
  }
}

class ConsumPracticeScreen extends StatelessWidget {
  const ConsumPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumer Practice'),
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<MyDataModel1>.value(value: MyDataModel1()),
          ChangeNotifierProvider<MyDataModel2>.value(value: MyDataModel2()),
        ],
        child: const HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer2<MyDataModel1, MyDataModel2>(
              builder: (context, model1, model2, child) {
                return ConsumSubWidget1(model1, model2, child);
              },
              child: const ConsumSubWidget2(), // excluded rebuilding
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    var model1 =
                        Provider.of<MyDataModel1>(context, listen: false);
                    model1.changeData();
                  },
                  child: const Text('model1 change'),
                ),
                ElevatedButton(
                  onPressed: () {
                    var model2 =
                        Provider.of<MyDataModel2>(context, listen: false);
                    model2.changeData();
                  },
                  child: const Text('Model2 change'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
