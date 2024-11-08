import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/dictionary_details.dart';

/// A page that lists different dictionaries (words, proverbs, idioms).
class DictionaryPage extends StatelessWidget {
  const DictionaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Resimli Sözlük',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: InkWell(
                  onTap: () => _getDetails(context, EntryType.kelime),
                  child: const Card(
                    color: secondaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Resimli Türkçe Sözlük',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: InkWell(
                  onTap: () => _getDetails(context, EntryType.atasozu),
                  child: const Card(
                    color: secondaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Resimli Atasözleri Sözlüğü',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: InkWell(
                  onTap: () => _getDetails(context, EntryType.deyim),
                  child: const Card(
                    color: secondaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Resimli Deyimler Sözlüğü',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  /// Navigate to the related dictionary.
  Future<void> _getDetails(BuildContext context, EntryType type) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DictionaryDetails(
                  type: type,
                )));
  }
}
