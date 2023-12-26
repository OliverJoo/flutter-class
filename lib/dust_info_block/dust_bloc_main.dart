import 'package:flutter/material.dart';
import 'package:flutter_class/dust_info_block/bloc/air_bloc.dart';
import 'model/air_result.dart';

void main() {
  runApp(const MyApp());
}

final airBloc = AirBloc();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dust Information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<AirResult>(
            stream: airBloc.airResult ,  // airBloc.airResult
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return buildBody(snapshot.data!);
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }

  Widget buildBody(AirResult result) {
    return Padding(
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
                  color: getColor(result),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Dust'),
                      Text('${result.data?.current?.pollution?.aqius}',
                          style: TextStyle(fontSize: 40)),
                      Text(
                        getString(result),
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
                            'https://airvisual.com/images/${result.data?.current?.weather?.ic}.png',
                            width: 32,
                            height: 32,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            '${result.data?.current?.weather?.tp}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Text('Humidity ${result.data?.current?.weather?.hu}%'),
                      Text('Wind ${result.data?.current?.weather?.ws}m/s'),
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
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                onPressed: () {
                  airBloc.fetch();
                },
                child: Icon(Icons.refresh, color: Colors.black))
          ],
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
