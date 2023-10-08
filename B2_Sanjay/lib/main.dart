import 'package:b2_sanjay/home_page/home.dart';
import 'package:b2_sanjay/login_page/login.dart';
import 'package:flutter/material.dart';

// Defining the main function
void main() {
  // Run the Flutter app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FormScreen(), 
        '/home': (context) => const HomeScreen(), 
      },
    );
  }
}
