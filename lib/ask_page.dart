import 'package:flutter/material.dart';
import 'package:algorithm_architects/ai_requests.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:image_picker/image_picker.dart';

/// A page where users upload a photo of their questions which they couldn't answer and write their steps to solve. AI responses with a text that explains why their answer is incorrect.
class AskPage extends StatefulWidget {
  const AskPage({super.key});

  @override
  AskPageState createState() => AskPageState();
}

class AskPageState extends State<AskPage> {
  final TextEditingController _userAnswerController = TextEditingController();
  String _aiAnswer = '';
  bool _imagePickerActive = true;
  bool _imageSelected = false;
  bool _loading = false;
  final ImagePicker _picker = ImagePicker();
  late XFile _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Soru Sor',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Card(
              color: secondaryColor,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Çözemediğin bir sorunun net, rahatça okunabildiği bir fotoğrafını yükle. Ayrıca çözmeye çalıştığın adımlarını yaz. Yapay zekâ nerede hata yaptığını söyleyerek yardımcı olacak.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 90, left: 90, top: 15, bottom: 4),
              child: TextButton(
                onPressed: _imagePickerActive && !_loading
                    ? () {
                        _getImage(ImageSource.camera);
                      }
                    : () {},
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text('Fotoğraf çek'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 90, left: 90, top: 4, bottom: 15),
              child: TextButton(
                onPressed: _imagePickerActive && !_loading
                    ? () {
                        _getImage(ImageSource.gallery);
                      }
                    : () {},
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text('Galeriden seç'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                _imageSelected ? '[Görüntü seçildi]' : '[Görüntü seçilmedi]',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            TextField(
              controller: _userAnswerController,
              decoration: createTextFieldDecoration('Lütfen cevabını yaz'),
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              style: const TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
              child: TextButton(
                // Send photo and user answer to AI, then show the response
                onPressed: !_loading
                    ? () async {
                        setState(() {
                          _loading = true;
                        });
                        final String aiAnswerText =
                            await AIRequests.askQuestion(
                                _userAnswerController.text, _image);

                        setState(() {
                          _aiAnswer = aiAnswerText;
                          _loading = false;
                        });
                      }
                    : () {},
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text('Gönder'),
              ),
            ),
            Text(_aiAnswer)
          ],
        ),
      ),
    );
  }

  /// Get an image of the question from the camera or gallery
  Future<void> _getImage(ImageSource source) async {
    setState(() {
      _imagePickerActive = false;
    });
    try {
      _image = (await _picker.pickImage(source: source))!;
      setState(() {
        _imageSelected = true;
      });
    } catch (e) {
      if (e.toString() != 'Null check operator used on a null value' &&
          mounted) {
        showAlert(context);
      }
    }
    setState(() {
      _imagePickerActive = true;
    });
  }
}
