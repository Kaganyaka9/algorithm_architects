import 'dart:convert';
import 'package:algorithm_architects/shared.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:image_picker/image_picker.dart';

/// AIRequests class contains static methods to interact with the Gemini AI model.
abstract class AIRequests {
  /// Checks if user has used the word correctly in a sentence.
  static Future<Map<String, dynamic>> checkSentence(
      EntryType type, String title, String sentence) async {
    // Add entry type to the prompt based on its type.
    final String promptType;
    switch (type) {
      case EntryType.kelime:
        promptType = 'kelimesi';
        break;
      case EntryType.atasozu:
        promptType = 'atasözü';
        break;
      case EntryType.deyim:
        promptType = 'deyimi';
        break;
    }

    // Change the generation config to return a JSON response. Response includes a bool (cevap) and a string (aciklama).
    final GenerationConfig generationConfig = GenerationConfig(
      responseSchema: Schema(
        SchemaType.object,
        requiredProperties: ['cevap'],
        enumValues: [],
        properties: {
          'cevap': Schema(SchemaType.boolean),
          'aciklama': Schema(SchemaType.string),
        },
      ),
      responseMimeType: 'application/json',
    );

    // Create the model with the generation config, API key and system instruction.
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      generationConfig: generationConfig,
      apiKey: const String.fromEnvironment("Gemini_API_KEY"),
      systemInstruction: Content.text(
          'Sen bir Türkçe öğretmenisin. Sana vereceğim cümledeki "$title" $promptType doğru kullanılmış mı kontrol et. Doğru ise "cevap" özelliğini doğru olarak ayarla. Yanlışsa "cevap" özelliğini yanlış olarak ayarla ve neden yanlış olduğunu "aciklama" özelliğinde açıkla. İlkokul öğrencisine açıklarmış gibi açıkla.'),
    );

    // Set the prompt as user's sentence and send the generation request.
    final prompt = sentence;
    final content = [Content.text(prompt)];
    final response = await model.generateContent(content);

    // Parse the response JSON and return it.
    try {
      final responseJSON = jsonDecode(response.text!);
      if (responseJSON['aciklama'] == null) {
        return {
          'cevap': responseJSON['cevap'],
        };
      }
      return {
        'cevap': responseJSON['cevap'],
        'aciklama': responseJSON['aciklama'],
      };
    } catch (e) {
      return {
        'cevap': false,
        'aciklama': 'Yapay zeka cevap verirken bir hata oluştu.',
      };
    }
  }

  /// Ask a question by providing an image of the question and string of user's answer.
  static Future<String> askQuestion(String userAnswer, XFile image) async {
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: const String.fromEnvironment("Gemini_API_KEY"),
      systemInstruction: Content.text(
          'Sen bir ilkokul matematik öğretmenisin. Bir öğrenci aşağıdaki soruyu çözemedi ve çözmeye çalıştığı adımları yazdı. Soruyu adım adım incele. Öğrencinin nerede hata yaptığını bul ve öğrenciye açıkla. Öğrenci işlem hatası yaparak sonucu yanlış bulmuş olabilir. Öğrenciye sorunun cevabını kesinlikle söyleme. İlkokul öğrencisine açıklarmış gibi açıkla. Türkçe açıkla.'),
    );
    final prompt = userAnswer;
    String base64Image = base64Encode(await image.readAsBytes());

    final content = [
      Content.text(prompt),
      Content.data("image/jpeg", await image.readAsBytes())
    ];
    // final content2 = [
    //   Content.multi(parts: [
    //     Content.text(prompt),
    //     Content.data("image", await image.readAsBytes())
    //   ])
    // ];

    final response = await model.generateContent(content);
    print(response.text);
    return response.text!;
  }
}
