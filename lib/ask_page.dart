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
  final ImagePicker _picker = ImagePicker();
  late XFile _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soru Sor', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
                "Çözemediğiniz bir sorunun net, rahatça okunabildiği bir fotoğrafını yükleyin. Ayrıca çözmeye çalıştığınız adımlarını yazın. Yapay zekâ nerede hata yaptığızı söyleyerek yardımcı olacak."),
            TextButton(
              onPressed: _imagePickerActive
                  ? () {
                      _getImage(ImageSource.camera);
                    }
                  : () {},
              child: const Text("Fotoğraf çek"),
            ),
            TextButton(
              onPressed: _imagePickerActive
                  ? () {
                      _getImage(ImageSource.gallery);
                    }
                  : () {},
              child: const Text("Galeriden seç"),
            ),
            Text(_imageSelected ? "[Görüntü seçildi]" : "[Görüntü seçilmedi]"),
            TextField(
              controller: _userAnswerController,
              decoration: const InputDecoration(
                hintText: 'Cevabınızı yazın',
              ),
            ),
            TextButton(
              // Send photo and user answer to AI, then show the response
              onPressed: () async {
                final String aiAnswerText = await AIRequests.askQuestion(
                    _userAnswerController.text, _image);

                setState(() {
                  _aiAnswer = aiAnswerText;
                });
              },
              child: const Text("Gönder"),
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
      if (e.toString() != "Null check operator used on a null value" &&
          mounted) {
        showAlert(context);
      }
      setState(() {
        _imagePickerActive = true;
      });
    }
  }
}
