import 'dart:convert';
import 'package:algorithm_architects/shared.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

abstract class AIRequests {
  static Future<Map<String, dynamic>> checkSentence(
      EntryType type, String title, String sentence) async {
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
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      generationConfig: generationConfig,
      apiKey: const String.fromEnvironment("Gemini_API_KEY"),
      systemInstruction: Content.text(
          'Sen bir Türkçe öğretmenisin. Sana vereceğim cümledeki "$title" $promptType doğru kullanılmış mı kontrol et. Doğru ise "cevap" özelliğini doğru olarak ayarla. Yanlışsa "cevap" özelliğini yanlış olarak ayarla ve neden yanlış olduğunu "aciklama" özelliğinde açıkla. İlkokul öğrencisine açıklarmış gibi açıkla.'),
    );

    final prompt = sentence;
    final content = [Content.text(prompt)];
    // final content = [Content.data("mimeType", bytes)]
    final response = await model.generateContent(content);

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

  Future<void> generateImage(EntryType type, String title) async {}

  Future<String> askQuestion(String userAnswer) async {
    return "Gemini Cevabı";
  }
}
