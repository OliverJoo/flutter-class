import 'package:flutter/material.dart';
import 'package:flutter_class/weather_app/lib/data/repository/weather_repository_impl.dart';
import 'package:flutter_class/weather_app/lib/presentation/weather_main_view_model.dart';
import 'package:provider/provider.dart';

import 'lib/presentation/weather_main_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) =>
            WeatherMainViewModel(repository: WeatherRepositoryImpl()),
        child: const WeatherMainScreen(),
      ),
    );
  }
}
