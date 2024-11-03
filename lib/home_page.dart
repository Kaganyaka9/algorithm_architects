import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topCenter,
        child: ListView(
          children: const [
            EntryCard(type: EntryType.kelime, index: 0, inHomePage: true),
            EntryCard(type: EntryType.atasozu, index: 0, inHomePage: true),
            EntryCard(type: EntryType.deyim, index: 0, inHomePage: true),
          ],
        ),
      ),
    );
  }
}
