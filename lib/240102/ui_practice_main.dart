import 'package:flutter/material.dart';
import 'package:flutter_class/240102/routes.dart';

import 'di/di_setup.dart';

void main() {
  diSetup();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'UI Practice Image Pixa with go_router & getIt & Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // no need for MaterialApp.router usage
      // home: ChangeNotifierProvider(
      //   create: (context) => MainViewModel(repository: ImageItemRepositoryImpl()),
      //   child: const MainScreen(),
      // ),
    );
  }
}
