import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: Counter(),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final counterSubject = BehaviorSubject<int>();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                counterSubject.add(++counter);
              },
              child: Text('add'),
            ),
            StreamBuilder<int>(
                stream: counterSubject.stream,
                initialData: 0,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot == null
                        ? Text('null')
                        : Text(
                            '${snapshot.data}',
                            style: TextStyle(fontSize: 30),
                          );
                  } else if (snapshot.hasError) {
                    // return Text('Error');
                    throw Exception('Error!');
                  }
                  return CircularProgressIndicator();
                }),
          ],
        ),
      ),
    );
  }
}
