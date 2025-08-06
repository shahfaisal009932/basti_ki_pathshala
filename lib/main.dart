import 'package:basti_ngo/screen/home_screen.dart';
import 'package:flutter/material.dart';
///
void main() {
  runApp(const NGOApp());
}

class NGOApp extends StatelessWidget {
  const NGOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NGO App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  HomeScreen(),
    );
  }
}
