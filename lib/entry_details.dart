import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_card.dart';
import 'package:algorithm_architects/ai_requests.dart';
import 'package:algorithm_architects/dictionary_data.dart';

/// A page that displays the details of a dictionary entry (image, title,
/// and description) and allows the user to check if a sentence is correct.
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
  bool _aiChecking = false;

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
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                    Text(
                      'Tanıma göre ${_setInfoText()} kullanarak aşağıdaki kutuya bir cümle yaz. Yapay zekâ cümleni analiz ederek ${_setInfoText()} doğru kullanıp kullanmadığını kontrol edecek.',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _userSentenceController,
              decoration: createTextFieldDecoration('Örnek cümle girin'),
              keyboardType: TextInputType.multiline,
              maxLines: 10,
            ),
            const SizedBox(height: 20),
            if (_aiAnswer != '')
              Card(
                color: secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _aiAnswer,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: !_aiChecking ? _checkSentence : null,
                  style: TextButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Kontrol et',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Sets the information text above based on the type of the dictionary entry.
  String _setInfoText() {
    final wordType = switch (widget.type) {
      EntryType.kelime => 'kelimeyi',
      EntryType.atasozu => 'atasözünü',
      EntryType.deyim => 'deyimi',
    };
    return wordType;
  }

  /// Checks if the user has used the word/proverb/idiom correctly
  /// using the AI model.
  Future<void> _checkSentence() async {
    setState(() {
      _aiChecking = true;
    });
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
        _aiChecking = false;
      });
    } else {
      setState(() {
        _aiAnswer =
            'Ne yazık ki kurduğun cümlede bir hata var. ${response['aciklama']}';
        _aiChecking = false;
      });
    }
  }
}
