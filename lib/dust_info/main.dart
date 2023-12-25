import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_class/dust_info/air_result.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dust Information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  late AirResult _result;

  Future<AirResult> fetchData() async {
    var response = await http.get(Uri.parse(
        'https://api.airvisual.com/v2/nearest_city?key=ea3a610a-1c88-4e9d-a50f-d1451f4840e4'));

    AirResult result = AirResult.fromJson(jsonDecode(response.body));

    return result;
  }

  @override
  void initState() {
    super.initState();

    fetchData().then((airResult) {
      setState(() {
        _result = airResult;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _result == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dust Info',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Card(
                        child: Column(
                      children: <Widget>[
                        Container(
                          color: getColor(_result),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Dust'),
                              Text('${_result.data?.current?.pollution?.aqius}',
                                  style: TextStyle(fontSize: 40)),
                              Text(
                                getString(_result),
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    'https://airvisual.com/images/${_result.data?.current?.weather?.ic}.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    '${_result.data?.current?.weather?.tp}',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Text(
                                  'Humidity ${_result.data?.current?.weather?.hu}%'),
                              Text(
                                  'Wind ${_result.data?.current?.weather?.ws}m/s'),
                            ],
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(20))),
                        onPressed: () {},
                        child: Icon(Icons.refresh, color: Colors.black))
                  ],
                ),
              ),
            ),
    );
  }

  Color getColor(AirResult result) {
    if (result.data?.current?.pollution?.aqius != null) {
      int? aquis = result.data?.current?.pollution?.aqius;
      if (aquis! < 50) {
        return Colors.greenAccent;
      } else if (aquis! < 100) {
        return Colors.yellow;
      } else if (aquis! < 150) {
        return Colors.orange;
      }
    }
    return Colors.red;
  }

  String getString(AirResult result) {
    if (result.data?.current?.pollution?.aqius != null) {
      int? aquis = result.data?.current?.pollution?.aqius;
      if (aquis! < 50) {
        return 'Good!';
      } else if (aquis! < 100) {
        return 'Normal';
      } else if (aquis! < 150) {
        return 'Bad';
      } else {
        return 'Worst';
      }
    } else {
      return 'No Data';
    }
  }
}
