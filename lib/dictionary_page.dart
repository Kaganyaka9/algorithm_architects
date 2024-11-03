import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/dictionary_details.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resimli Sözlük'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              ListTile(
                title: const Text("Resimli Türkçe Sözlük"),
                tileColor: lightColor,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DictionaryDetails(
                              type: EntryType.kelime,
                            ))),
              ),
              ListTile(
                title: const Text("Resimli Atasözleri Sözlüğü"),
                tileColor: lightColor,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DictionaryDetails(
                              type: EntryType.atasozu,
                            ))),
              ),
              ListTile(
                title: const Text("Resimli Deyimler Sözlüğü"),
                tileColor: lightColor,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DictionaryDetails(
                              type: EntryType.deyim,
                            ))),
              ),
            ],
          )),
    );
  }
}
