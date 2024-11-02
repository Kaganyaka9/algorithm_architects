import 'package:algorithm_architects/entry_details.dart';
import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';

class DictionaryDetails extends StatelessWidget {
  final EntryType type;
  const DictionaryDetails({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sözlük Detayları'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Abanın kadri yağmurda bilinir.'),
                subtitle: Text(
                    'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.'),
                tileColor: lightColor,
                onTap: () => _getDetails(
                  context,
                  'Abanın kadri yağmurda bilinir.',
                  'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Abanın kadri yağmurda bilinir.'),
                subtitle: Text(
                    'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.'),
                tileColor: lightColor,
                onTap: () => _getDetails(
                  context,
                  'Abanın kadri yağmurda bilinir.',
                  'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Abanın kadri yağmurda bilinir.'),
                subtitle: Text(
                    'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.'),
                tileColor: lightColor,
                onTap: () => _getDetails(
                  context,
                  'Abanın kadri yağmurda bilinir.',
                  'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Abanın kadri yağmurda bilinir.'),
                subtitle: Text(
                    'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.'),
                tileColor: lightColor,
                onTap: () => _getDetails(
                  context,
                  'Abanın kadri yağmurda bilinir.',
                  'Her şeyin bir değeri vardır. Bir şeyin gerçek değeri (kadri) ise, ona gerçekten ihtiyaç duyulduğu zaman ortaya çıkar.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _getDetails(
      BuildContext context, String title, String definition) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EntryDetails(
                  type: type,
                  title: title,
                  definition: definition,
                )));
  }
}
