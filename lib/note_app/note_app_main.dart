import 'package:flutter/material.dart';
import 'package:flutter_class/note_app/presentation/notes/notes_screen.dart';
import 'package:flutter_class/note_app/presentation/ui/colors.dart';
import 'package:provider/provider.dart';

import 'di/provider_setup.dart';

void main() async {
  // ensure widget binding of platform channel
  // - call setup(kinda provider setting) b4 drawing widget
  // usage ex - camera initialization
  WidgetsFlutterBinding.ensureInitialized();
  final providers = await getProviders();

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clean Architecture Note App',
      theme: ThemeData(
        unselectedWidgetColor: Colors.blue,
        primaryColor: Colors.white,
        backgroundColor: darkGray,
        canvasColor: darkGray,
        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: Colors.white,
                  foregroundColor: darkGray,
                ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: darkGray,
            ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
      home: const NotesScreen(),
    );
  }
}
