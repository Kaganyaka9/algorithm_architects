import 'package:flutter/material.dart';
import 'package:algorithm_architects/dictionary_data.dart';

const Color primaryColor = Color(0xFF2C8FFF);
const Color secondaryColor = Color(0xFF00b5ff);
const Color lightColor = Color(0xFFE4F0FF);

enum EntryType {
  kelime,
  atasozu,
  deyim,
}

String getAssetName(EntryType type, int index) {
  final folder = switch (type) {
    EntryType.kelime => "kelime",
    EntryType.atasozu => "atasozu",
    EntryType.deyim => "deyim",
  };
  final id = switch (type) {
    EntryType.kelime => DictionaryData.kelimeler[index]['id'],
    EntryType.atasozu => DictionaryData.atasozleri[index]['id'],
    EntryType.deyim => DictionaryData.deyimler[index]['id'],
  };

  return "assets/$folder/$id.jpeg";
}

void showAlert(BuildContext context, {bool shouldPop = false}) {
  var alert = AlertDialog(
    title: const Text(
      "Bir Hata Oluştu",
    ),
    content: const Text(
      "Bir hata oluştu. Lütfen daha sonra tekrar deneyiniz.",
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
          if (shouldPop) {
            Navigator.pop(context);
          }
        },
        child: const Text(
          "Tamam",
          style: TextStyle(
            color: primaryColor,
          ),
        ),
      )
    ],
  );

  showDialog(context: context, builder: (BuildContext context) => alert);
}
