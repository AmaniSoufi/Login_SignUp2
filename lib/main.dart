import 'package:flutter/material.dart';
import 'package:untitled4/LoginScreen.dart';
import 'package:untitled4/SignUpScreen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/login': (context) => const LoginScreen(),
        '/Signup': (context) => const SignUpScreen(),
      },
    );
  }
}
