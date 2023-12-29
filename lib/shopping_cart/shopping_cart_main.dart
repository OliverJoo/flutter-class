import 'package:flutter/material.dart';
import 'package:flutter_class/shopping_cart/catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shopping Cart Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome!'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Enter'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Catalog()));
          },
        ),
      ),
    );
  }
}
