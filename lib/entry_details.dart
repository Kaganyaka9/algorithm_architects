import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_card.dart';

class EntryDetails extends StatefulWidget {
  final EntryType type;
  final String title;
  final String definition;
  const EntryDetails(
      {super.key,
      required this.type,
      required this.title,
      required this.definition});

  @override
  State<EntryDetails> createState() => _EntryDetailsState();
}

class _EntryDetailsState extends State<EntryDetails> {
  TextEditingController userSentenceController = TextEditingController();
  String aiAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detaylar', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            // TODO: Add Entry Image here
            EntryCard(
              type: widget.type,
              title: widget.title,
              definition: widget.definition,
              navigate: false,
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bu tanıma göre örnek cümle girin: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextField(
                    controller: userSentenceController,
                    decoration: const InputDecoration(
                      hintText: 'Örnek cümle girin',
                    ),
                  ),
                  TextButton(
                    onPressed: _checkSentence,
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    child: const Text(
                      'Kontrol et',
                      style: TextStyle(
                        color: Color.fromARGB(255, 63, 58, 43),
                      ),
                    ),
                  ),
                  Text(aiAnswer, style: const TextStyle(fontSize: 16)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _checkSentence() {
    // TODO: Send data
    print('Checking sentence...');
    print('Sentence: ${userSentenceController.text}');
    setState(() {
      aiAnswer = "${userSentenceController.text} is correct.";
    });
  }
}
