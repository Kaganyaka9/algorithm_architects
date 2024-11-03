import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_card.dart';
import 'package:algorithm_architects/ai_requests.dart';
import 'package:algorithm_architects/dictionary_data.dart';

class EntryDetails extends StatefulWidget {
  final EntryType type;
  final int index;
  const EntryDetails({
    super.key,
    required this.type,
    required this.index,
  });

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
        title: Text(
          switch (widget.type) {
            EntryType.kelime => DictionaryData.kelimeler[widget.index]['title'],
            EntryType.atasozu => DictionaryData.atasozleri[widget.index]
                ['title'],
            EntryType.deyim => DictionaryData.deyimler[widget.index]['title'],
          },
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            EntryCard(
              type: widget.type,
              index: widget.index,
              inHomePage: false,
            ),
            Card(
              color: secondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: _checkSentence,
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          child: const Text(
                            'Kontrol et',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(_aiAnswer, style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _checkSentence() async {
    final title = switch (widget.type) {
      EntryType.kelime => DictionaryData.kelimeler[widget.index]['title'],
      EntryType.atasozu => DictionaryData.atasozleri[widget.index]['title'],
      EntryType.deyim => DictionaryData.deyimler[widget.index]['title'],
    };

    Map<String, dynamic> response = await AIRequests.checkSentence(
        widget.type, title, _userSentenceController.text);
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
