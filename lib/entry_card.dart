import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_details.dart';
import 'package:algorithm_architects/dictionary_data.dart';

/// A card that displays the title and definition of a dictionary entry.
class EntryCard extends StatelessWidget {
  final EntryType type;
  final int index;

  /// Whether card is in the home page or not. If true, card is tappable.
  final bool inHomePage;
  const EntryCard({
    super.key,
    required this.type,
    required this.index,
    required this.inHomePage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: InkWell(
          onTap: inHomePage ? () => _getDetails(context) : null,
          child: Card(
            color: secondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _setTitle(),
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(getAssetName(type, index))),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Wrap(
                      children: [
                        Text(
                          switch (type) {
                            EntryType.kelime => DictionaryData.kelimeler[index]
                                ['title'],
                            EntryType.atasozu =>
                              DictionaryData.atasozleri[index]['title'],
                            EntryType.deyim => DictionaryData.deyimler[index]
                                ['title'],
                          },
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    switch (type) {
                      EntryType.kelime => DictionaryData.kelimeler[index]
                          ['description'],
                      EntryType.atasozu => DictionaryData.atasozleri[index]
                          ['description'],
                      EntryType.deyim => DictionaryData.deyimler[index]
                          ['description'],
                    },
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  /// Sets the title of the card based on the entry type and its location.
  String _setTitle() {
    if (inHomePage) {
      switch (type) {
        case EntryType.kelime:
          return 'Günün Kelimesi';
        case EntryType.atasozu:
          return 'Günün Atasözü';
        case EntryType.deyim:
          return 'Günün Deyimi';
        default:
          return 'Hata';
      }
    }
    switch (type) {
      case EntryType.kelime:
        return 'Kelime';
      case EntryType.atasozu:
        return 'Atasözü';
      case EntryType.deyim:
        return 'Deyim';
      default:
        return 'Hata';
    }
  }

  /// Navigates to the details page of the entry.
  Future<void> _getDetails(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EntryDetails(
                  type: type,
                  index: index,
                )));
  }
}
