/// The `DictionaryData` class stores words, proverbs, and idioms and their descriptions.
abstract class DictionaryData {
  static const List<Map<String, String>> kelimeler = [
    {
      'title': 'Melankolik',
      'description':
          'Melankolik demek, biraz üzgün ve düşünceli olmak demektir. Mesela, yağmurlu bir günde pencereden dışarıyı izlerken biraz hüzünlü hissedersin ya, işte o sırada kendini melankolik hissedebilirsin. Melankolik olan insanlar, bazen yalnız kalmayı, kitap okumayı veya müzik dinlemeyi severler. Bu, kötü bir şey değil, sadece bir duygu durumudur. Tıpkı mutlu, heyecanlı veya kızgın olmak gibi.',
    },
    {
      'title': 'Gökkuşağı',
      'description':
          'Yağmurdan sonra gökyüzünde oluşan, birbirine geçmiş renkli çizgiler.',
    },
    {
      'title': 'Kelebek',
      'description':
          'Kanatları renkli ve pullu olan, çiçeklerden nektar emerek beslenen küçük bir böcek.',
    },
  ];

  static const List<Map<String, String>> atasozleri = [
    {
      'title': 'Armut dibine düşer.',
      'description':
          'Çocuklar genellikle anne babalarına benzer. (Çocuklar, anne babalarının özelliklerini alır.)',
    },
    {
      'title': 'Aş pişer, baş yanar.',
      'description':
          'Bir işi yaparken çok acele edersen hata yapabilirsin. (Çok acele edersen işler karışabilir.)',
    },
    {
      'title': 'Elma armuda karışmaz.',
      'description':
          'Farklı özellikteki insanlar bir araya gelmez. (Zıt karakterdeki insanlar anlaşamaz.)',
    },
  ];

  static const List<Map<String, String>> deyimler = [
    {
      'title': 'Gözüne kestirmek',
      'description': 'Bir şeyi çok beğenmek, almak istemek demek.',
    },
    {
      'title': 'Diline dolamak',
      'description': 'Bir şeyi çok beğenmek, sürekli tekrar etmek demek.',
    },
    {
      'title': 'Kulaktan dolma',
      'description':
          'Doğru olup olmadığı belli olmayan, başkasından duyulmuş bilgi demek.',
    },
  ];
}
