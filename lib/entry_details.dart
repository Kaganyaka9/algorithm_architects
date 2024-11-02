import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_card.dart';
import 'package:algorithm_architects/ai_requests.dart';

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
  EntryDetailsState createState() => EntryDetailsState();
}

class EntryDetailsState extends State<EntryDetails> {
  final TextEditingController _userSentenceController = TextEditingController();
  String _aiAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
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
              inHomePage: false,
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
                    controller: _userSentenceController,
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
                  Text(_aiAnswer, style: const TextStyle(fontSize: 16)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _checkSentence() async {
    Map<String, dynamic> response = await AIRequests.checkSentence(
        widget.type, widget.title, _userSentenceController.text);
    if (response['cevap']) {
      setState(() {
        _aiAnswer = 'Kurduğun cümle doğru!';
      });
    } else {
      setState(() {
        _aiAnswer =
            'Ne yazık ki kurduğun cümlede bir hata var. ${response['aciklama']}';
      });
    }
  }
}
