import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF2C8FFF);
const Color secondaryColor = Color(0xFF00b5ff);
const Color lightColor = Color(0xFFE4F0FF);

enum EntryType {
  kelime,
  atasozu,
  deyim,
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
