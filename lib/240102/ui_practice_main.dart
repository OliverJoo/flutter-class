import 'package:flutter/material.dart';
import 'package:flutter_class/240102/ui/main_view_model.dart';
import 'package:provider/provider.dart';

import 'repository/image_item_repository_impl.dart';
import 'ui/image_main_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UI Practice Image Pixa',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (context) => MainViewModel(repository: ImageItemRepositoryImpl()),
          child: const MainScreen(),
        ));
  }
}
