import 'package:flutter/material.dart';
import 'package:algorithm_architects/dictionary_data.dart';

// const Color primaryColor = Color(0xFF2C8FFF);
// const Color secondaryColor = Color(0xFF00B5ff);
// const Color lightColor = Color(0xFFE4F0FF);

const Color primaryColor = Color(0xFF2C8FFF);
const Color secondaryColor = Color.fromARGB(255, 83, 206, 255);
const Color lightColor = Color(0xFFafc4fb);

// const Color primaryColor = Color.fromARGB(255, 142, 207, 204);
// const Color lightColor = Color.fromARGB(255, 176, 192, 211);
// const Color secondaryColor = Color.fromARGB(255, 188, 252, 247);
// const Color darkColor = Color.fromARGB(255, 23, 42, 58);

enum EntryType {
  kelime,
  atasozu,
  deyim,
}

/// Returns the asset name of the image for the given type and index.
String getAssetName(EntryType type, int index) {
  final folder = switch (type) {
    EntryType.kelime => 'kelime',
    EntryType.atasozu => 'atasozu',
    EntryType.deyim => 'deyim',
  };
  final id = switch (type) {
    EntryType.kelime => DictionaryData.kelimeler[index]['id'],
    EntryType.atasozu => DictionaryData.atasozleri[index]['id'],
    EntryType.deyim => DictionaryData.deyimler[index]['id'],
  };

  return 'assets/$folder/$id.jpeg';
}

/// Shows an alert dialog with a message if an error occurs.
void showAlert(BuildContext context, {bool shouldPop = false}) {
  var alert = AlertDialog(
    title: const Text(
      'Bir Hata Oluştu',
    ),
    content: const Text(
      'Bir hata oluştu. Lütfen daha sonra tekrar deneyin.',
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
          'Tamam',
          style: TextStyle(
            color: primaryColor,
          ),
        ),
      )
    ],
  );

  showDialog(context: context, builder: (BuildContext context) => alert);
}

/// Creates a text field decoration with the given hint text.
InputDecoration createTextFieldDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: lightColor),
      borderRadius: BorderRadius.all(
        Radius.circular(16.0),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
    ),
  );
}
