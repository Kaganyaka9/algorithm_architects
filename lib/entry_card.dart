import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_details.dart';

class EntryCard extends StatelessWidget {
  final EntryType type;
  final String title;
  final String definition;
  final bool navigate;
  const EntryCard({
    super.key,
    required this.type,
    required this.title,
    required this.definition,
    required this.navigate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: secondaryColor,
        child: ListTile(
          title: Text(
            _getType(),
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
          onTap: navigate ? () => _getDetails(context) : () {},
        ),
      ),
    );
  }

  String _getType() {
    if (navigate) {
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
