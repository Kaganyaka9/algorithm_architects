import 'package:algorithm_architects/entry_details.dart';
import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/dictionary_data.dart';

/// A page that Lists words, proverbs or idioms depending on the type. Shows images and titles.
class DictionaryDetails extends StatelessWidget {
  final EntryType type;
  const DictionaryDetails({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sözlük Detayları'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: switch (type) {
            EntryType.kelime => DictionaryData.kelimeler.length,
            EntryType.atasozu => DictionaryData.atasozleri.length,
            EntryType.deyim => DictionaryData.deyimler.length,
          },
          itemBuilder: (context, index) {
            final wordList = switch (type) {
              EntryType.kelime => DictionaryData.kelimeler,
              EntryType.atasozu => DictionaryData.atasozleri,
              EntryType.deyim => DictionaryData.deyimler,
            };
            return Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () => _getDetails(context, index),
                  child: Card(
                    color: lightColor,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 80),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(getAssetName(type, index))),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            wordList[index]['title'],
                            style: const TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }

  Future<void> _getDetails(BuildContext context, int index) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EntryDetails(
                  type: type,
                  index: index,
                )));
  }
}
