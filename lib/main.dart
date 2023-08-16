import 'package:flutter/material.dart';
import 'package:messege/screens/login_screen.dart';

void main() {
  runApp(const MessegeApp());
}

class MessegeApp extends StatelessWidget {
  const MessegeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
