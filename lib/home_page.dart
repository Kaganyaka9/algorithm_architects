import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_card.dart';

/// Home page contains Word, Proverb and Idiom of the Day in Entry Cards.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            EntryCard(
                type: EntryType.kelime,
                index: _getIndexOfTheDay(),
                inHomePage: true),
            EntryCard(
                type: EntryType.atasozu,
                index: _getIndexOfTheDay(),
                inHomePage: true),
            EntryCard(
                type: EntryType.deyim,
                index: _getIndexOfTheDay(),
                inHomePage: true),
          ],
        ),
      ),
    );
  }

  /// Get the index for the word, proverb or idiom of the day.
  /// The index is calculated by the current day of the year.
  int _getIndexOfTheDay() {
    // Get the difference between the current day and 3rd of November 2024 (first day of this project).
    final difference = DateTime.now().difference(DateTime(2024, 11, 3)).inDays;
    return difference;
  }
}
