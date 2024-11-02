import 'package:flutter/material.dart';
import 'package:algorithm_architects/shared.dart';
import 'package:algorithm_architects/entry_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topCenter,
        child: ListView(
          children: const [
            EntryCard(
                type: EntryType.kelime,
                title: 'Melankolik',
                definition:
                    'Melankolik demek, biraz üzgün ve düşünceli olmak demektir. Mesela, yağmurlu bir günde pencereden dışarıyı izlerken biraz hüzünlü hissedersin ya, işte o sırada kendini melankolik hissedebilirsin. Melankolik olan insanlar, bazen yalnız kalmayı, kitap okumayı veya müzik dinlemeyi severler. Bu, kötü bir şey değil, sadece bir duygu durumudur. Tıpkı mutlu, heyecanlı veya kızgın olmak gibi.',
                inHomePage: true),
            EntryCard(
              type: EntryType.atasozu,
              title: 'Armut dibine düşer.',
              definition:
                  'Bu atasözü, genellikle bir kişinin ailesinden veya yakın çevresinden gördüğü örnekleri taklit ettiği ve onlara benzediği anlamına gelir. Yani, bir çocuk genellikle ailesinin davranışlarını, alışkanlıklarını ve değerlerini benimser.',
              inHomePage: true,
            ),
            EntryCard(
              type: EntryType.deyim,
              title: 'Göze batmak',
              definition:
                  'Bir şeyin çok belirgin veya rahatsız edici olması. Örneğin: "Yeni aldığı kıyafet o kadar gösterişliydi ki, herkese göze batıyordu."',
              inHomePage: true,
            ),
          ],
        ),
      ),
    );
  }
}
