import 'package:flutter/material.dart';
import 'package:algorithm_architects/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Öğrenelim',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
