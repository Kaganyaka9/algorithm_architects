import 'package:algorithm_architects/shared.dart';
import 'package:flutter/material.dart';

class AskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Text('This is an empty scaffold'),
      ),
    );
  }
}
