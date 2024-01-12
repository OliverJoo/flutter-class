import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// not tested coz of bug?
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Channel Demo with iOS & Andoriod',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: NativeCallWidget(),
    );
  }
}

class NativeCallWidget extends StatefulWidget {
  const NativeCallWidget({super.key});

  @override
  State<NativeCallWidget> createState() => _NativeCallWidgetState();
}

class _NativeCallWidgetState extends State<NativeCallWidget> {
  String? resultMessages;
  String? receiveMessage;

  // ??
  Future<Null> nativeCall() async {
    const channel = BasicMessageChannel<String>('myMsgChannel', StringCodec());
    String? result = await channel.send('Hi! Native - from Dart');
    setState(() {
      resultMessages = result;
    });
    channel.setMessageHandler((String? message) async {
      setState(() {
        receiveMessage = message;
      });
      return 'Reply from Dart';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message Channel Between Dart & iOS+Andriod'),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Result Message : $resultMessages'),
              Text('Receive Message : $receiveMessage'),
              ElevatedButton(
                onPressed: () {
                  nativeCall();
                },
                child: Text('Native Call!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
