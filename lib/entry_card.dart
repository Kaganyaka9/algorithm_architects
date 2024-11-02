import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_details.dart';

/// A card that displays the title and definition of a dictionary entry.
class EntryCard extends StatelessWidget {
  final EntryType type;
  final String title;
  final String definition;

  /// Whether card is in the home page or not. If true, card is tappable.
  final bool inHomePage;
  const EntryCard({
    super.key,
    required this.type,
    required this.title,
    required this.definition,
    required this.inHomePage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: secondaryColor,
        child: ListTile(
          title: Text(
            _setTitle(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 24, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                definition,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          onTap: inHomePage ? () => _getDetails(context) : () {},
        ),
      ),
    );
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
                  title: title,
                  definition: definition,
                )));
  }
}
