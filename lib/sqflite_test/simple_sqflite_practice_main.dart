import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'model.dart';

void main() {
  runApp(MySQFLiteApp());
}

class MySQFLiteApp extends StatefulWidget {
  const MySQFLiteApp({super.key});

  @override
  State<MySQFLiteApp> createState() => _MySQFLiteAppState();
}

class _MySQFLiteAppState extends State<MySQFLiteApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter SQFLite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SQFliteWidget(),
    );
  }
}

class SQFliteWidget extends StatefulWidget {
  const SQFliteWidget({super.key});

  @override
  State<SQFliteWidget> createState() => _SQFliteWidgetState();
}

class _SQFliteWidgetState extends State<SQFliteWidget> {
  @override
  void initState() {
    super.initState();
    _createTable();
  }

  var db;

  _createTable() async {
    db = await openDatabase('my_db.db', version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
      create table user(
        id integer primary key,
        name text,
        address text
        )
      ''');
    }, onUpgrade: (Database db, int oldVersion, int newVersion) {});
  }

  int lastId = 0;

  insert() async {
    lastId++;
    User user = User.fromData('name$lastId', 'seoul$lastId');
    lastId = await db.insert('user', user.toMap());
    print('${user.toMap()}');
  }

  update() async {
    User user = User.fromData('name${lastId - 1}', 'seoul${lastId - 1}');
    await db.update('user', user.toMap(), where: 'id=?', whereArgs: [lastId]);
  }

  delete() async {
    await db.delete('user', where: 'id=?', whereArgs: [lastId]);
    lastId--;
  }

  query() async {
    List<Map> maps = await db.query(
      'user',
      columns: ['id', 'name', 'address'],
    );

    List<User> users = List.empty(growable: true);
    maps.forEach((element) {
      users.add(User.fromMap(element as Map<String, Object?>));
    });
    if (maps.isNotEmpty) {
      print('select: ${maps.first}');
    }
    users.forEach((user) {
      print('${user.name}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQFlite Practice'),
      ),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: insert,
                child: const Text('insert'),
              ),
              ElevatedButton(
                onPressed: update,
                child: const Text('update'),
              ),
              ElevatedButton(
                onPressed: delete,
                child: const Text('delete'),
              ),
              ElevatedButton(
                onPressed: query,
                child: const Text('query'),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
