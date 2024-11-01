import 'package:algorithm_architects/shared.dart';
import 'package:flutter/material.dart';

class AskPage extends StatelessWidget {
  const AskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soru Sor', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Text(
            'Hata yaptığınız matematik sorularını buradan sorabilirsiniz.'),
      ),
    );
  }
}
