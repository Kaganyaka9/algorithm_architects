import 'package:algorithm_architects/shared.dart';
import 'package:flutter/material.dart';

class DictionaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sözlük', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Text('This is an empty scaffold'),
      ),
    );
  }
}
