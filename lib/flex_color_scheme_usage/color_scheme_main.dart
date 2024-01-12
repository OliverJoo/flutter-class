import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = FlexColorScheme.light(scheme: FlexScheme.deepPurple).toTheme;
    final darkTheme = FlexColorScheme.dark(scheme: FlexScheme.indigo).toTheme;

    return MaterialApp(
      theme: theme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlexColorScheme Example'),
        ),
        body: Center(
          child: Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}