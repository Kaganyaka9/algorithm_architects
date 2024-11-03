/// The `DictionaryData` class stores words, proverbs, and idioms
/// and their descriptions.
abstract class DictionaryData {
  static const List<Map<String, dynamic>> kelimeler = [
    {
      'id': 1,
      'title': 'Algoritma',
      'description':
          'Algoritma, bir işi baştan sona yapmak için takip ettiğimiz bir yol gibidir. Tıpkı bir kurabiye yaparken tarifteki adımları takip ettiğimiz gibi, bilgisayara da bir işi nasıl yapacağını anlatan adım adım bir yol gösteririz. Bu yola biz "algoritma" diyoruz. Mesela diş fırçalamak için yaptığımız hareketler (diş macunu sür, dişleri fırçala, ağzı çalkala) bir algoritmadır.',
    },
    {
      'id': 9,
      'title': 'Bütçe',
      'description':
          'Bütçe, senin oyun oynamak için biriktirdiğin bozuk paraların gibi düşünebilirsin. Tıpkı senin paranın bir sınırı olduğu gibi, herkesin de harcayabileceği belli bir miktar parası vardır. Bu paraya "bütçe" denir. Bütçe, bir ayda ne kadar harcayabileceğini belirlemene yardımcı olur. Örneğin, oyuncak almak istiyorsan, önce bütçeni kontrol edersin. Eğer yeterli paran varsa, o oyuncağı alabilirsin. Ama paran yetmiyorsa, biraz daha biriktirmen gerekir.'
    },
    {
      'id': 2,
      'title': 'Empati',
      'description':
          'Empati, başkalarının nasıl hissettiğini anlamaya çalışmak demektir. Tıpkı arkadaşının oyuncağını kırdığında onun üzüldüğünü anladığın gibi. Başka birinin yerine kendini koyup onun ne hissettiğini düşünmek empati yapmaktır. Mesela arkadaşın hasta olduğunda ona geçmiş olsun demek ve onun için üzülmek empati göstermektir. Ya da bir hayvanın aç olduğunu görünce ona yemek vermek de empati örneğidir.',
    },
    {
      'id': 3,
      'title': 'Estetik',
      'description':
          'Estetik, bir şeyin güzel olup olmadığına karar verdiğimizde kullandığımız bir kelime. Bir resim çok güzel, bir çiçek çok hoş, bir oyuncak çok şık gibi cümlelerde estetik kelimesinin anlamına yakın kelimeler kullanırız. Estetik, sadece güzellikle ilgili değil, aynı zamanda bir şeyin nasıl göründüğüne, bize nasıl hissettirdiğine de bakar. Örneğin, rengârenk bir balon bizi mutlu edebilir, sakinleştirici bir müzik dinlemek hoşumuza gidebilir. İşte bu duygular da estetikle ilgilidir. Estetik, sanat, moda, tasarım gibi alanlarda çok önemlidir. Bir ressam güzel bir tablo yapmak için, bir tasarımcı şık bir elbise çizmek için estetik bilgisine ihtiyaç duyar.',
    },
    {
      'id': 4,
      'title': 'Melankolik',
      'description':
          'Melankolik demek, biraz üzgün ve düşünceli olmak demektir. Mesela, yağmurlu bir günde pencereden dışarıyı izlerken biraz hüzünlü hissedersin ya, işte o sırada kendini melankolik hissedebilirsin. Melankolik olan insanlar, bazen yalnız kalmayı, kitap okumayı veya müzik dinlemeyi severler. Bu, kötü bir şey değil, sadece bir duygu durumudur. Tıpkı mutlu, heyecanlı veya kızgın olmak gibi.',
    },
    {
      'id': 8,
      'title': 'Mikroskop',
      'description':
          'Mikroskop, çok küçük şeyleri büyütüp görebilmemizi sağlayan bir büyüteç gibi düşün. Gözümüzle göremediğimiz kadar küçük olan böceklerin gözleri, bitki hücreleri veya toz tanecikleri gibi şeyleri mikroskop sayesinde daha yakından inceleyebiliriz. Tıpkı bir büyüteçle bir böceği daha büyük görmek gibi, mikroskop da çok küçük şeyleri büyüterek bize gösterir. Mesela bir damla suyun içinde yüzlerce küçük canlı olduğunu biliyor muydun? İşte bu canlıları görebilmek için mikroskoba ihtiyacımız var.'
    },
    {
      'id': 5,
      'title': 'Nostalji',
      'description':
          'Nostalji, geçmişe duyulan özlem demektir. Eskiden yaşadığın güzel günleri hatırladığında hissettiğin o sıcaklık ve özlem duygusu nostaljidir. Örneğin, çocukluğunda oynadığın oyuncakları, yaşadığın maceraları hatırladığında nostaljik bir duyguya kapılabilirsin. Nostalji, bazen bir fotoğraf, bir şarkı veya bir koku sayesinde canlanır. Bu tür şeyler, geçmişe dair güzel anılarımızı hatırlatır ve bizi mutlu eder.',
    },
    {
      'id': 6,
      'title': 'Paradoks',
      'description':
          'Paradoks, ilk bakışta doğru gibi görünen ama aslında bir çelişki içeren bir durumdur. Yani, aynı anda hem doğru hem de yanlış gibi görünen bir şeydir. Bu biraz kafa karıştırıcı olabilir, değil mi? Örneğin: "Yarın dün olacak" demek bir paradoks. Çünkü yarın bugün gelecek, dün ise geçmişte kaldı. Bu iki şey aynı anda olamaz. Başka bir örnek: "Bu cümle yanlıştır." Bu cümle hem doğru hem de yanlış gibi görünüyor. Eğer cümle doğruysa, o zaman yanlış olduğu anlamına gelir. Ama yanlışsa, o zaman doğru olduğu anlamına gelir.',
    },
    {
      'id': 7,
      'title': 'Sözleşme',
      'description':
          'Sözleşme, iki kişinin veya daha fazla kişinin bir anlaşma yapmasıdır. Tıpkı arkadaşınla oyun oynamaya başlamadan önce "Sen saklan, ben seni arayacağım" diye anlaştığınız gibi. Sözleşmelerde de insanlar ne yapacaklarına, ne vereceklerine veya ne alacaklarına dair söz verirler. Örneğin: Bir oyuncak satın alırken, sen parayı verirsin, mağaza da sana oyuncağı verir. İşte bu alışveriş, senin ve mağazanın arasında küçük bir sözleşmedir. Ya da bir oyun oynarken, kurallarına hep birlikte karar verirsiniz ve bu kurallar sizin oyun sözleşmenizi oluşturur. Sözleşmeler, hem çocuklar hem de büyükler için önemlidir. Çünkü sözleşmeler sayesinde herkes ne yapacağını bilir ve anlaşmazlıklar önlenir.',
    },
  ];

  static const List<Map<String, dynamic>> atasozleri = [
    {
      'id': 1,
      'title': 'Acı patlıcanı kırağı çalmaz.',
      'description':
          'Düşünsene, kışın hava soğuğunda patlıcanlar üşür değil mi? Ama acı patlıcanlar diğer sebzelere göre daha dayanıklıdır. Yani, çok zorluk görmüş olan insanlar, küçük bir soğuktan etkilenmezler. Tıpkı acı patlıcan gibi, zorluklar yaşamış insanlar da hayattaki küçük sorunlara daha kolay dayanabilirler. Bu atasözü bize, zorlukların bizi daha güçlü yapabileceğini anlatır.',
    },
    {
      'id': 2,
      'title': 'Aç tavuk kendini arpa ambarında sanır.',
      'description':
          'Çok aç bir tavuk var. Bu tavuk kendisini, açlığını giderebileceği arpa ambarında hayal ediyor. İnsanlar da bir yokluk hissettikleri şeyler için gerçekleşmeyecek hayaller kurar.',
    },
    {
      'id': 3,
      'title': 'Ağaç yaş iken eğilir.',
      'description':
          'Düşünsene, küçük bir fidanı eğmek çok kolay, değil mi? Ama büyümüş bir ağacı eğmek çok zor olur. İşte bu atasözü bize tam olarak bunu anlatıyor. Küçük yaştayken iyi alışkanlıklar edinmek ve doğru şeyleri öğrenmek çok önemli. Çünkü büyüdükçe alışkanlıklarımızı değiştirmek zorlaşır. Tıpkı küçük bir fidanı eğmek gibi, küçük yaşta doğru yolu öğrenmek de kolaydır.',
    },
    {
      'id': 4,
      'title': 'Ak akçe kara gün içindir.',
      'description':
          'Düşünsene, güneşli bir günde bulutlar toplanıp yağmur yağmaya başlıyor. Ya da oyun oynarken birden topun patladığını düşün. İşte tam bu gibi beklenmedik durumlarda paramız bize çok işimize yarar. Bu atasözü bize, zor zamanlar için para biriktirmenin önemini anlatır. Tıpkı güneşli havada şemsiye taşımak gibi, zor günler için de para biriktirmek akıllıca bir davranıştır.',
    },
    {
      'id': 6,
      'title': 'Armut dalının dibine düşer.',
      'description':
          'Mesela bir armut ağacının altında duruyorsun. Olgunlaşmış bir armut düşüyor. Bu armut nereye düşer? Ağacın dibine, değil mi? Buna benzer şekilde sen yararlı bir şey yaptığında ağacın dibine, yani yakınlarına yararlı olur.',
    },
    {
      'id': 7,
      'title': 'Ateş olmayan yerden duman çıkmaz.',
      'description':
          'Düşünsene, odada birden duman gördün. Bunun neden olduğunu merak edersin, değil mi? Elbette, odada bir yerde ateş olduğu için duman çıkıyor demektir. Ateş yoksa, duman da olmaz. Yani, her olayın bir sebebi vardır. Olaylar rastgele, kendiliğinden olmaz.',
    },
    {
      'id': 8,
      'title': 'Ava giden avlanır.',
      'description':
          'Düşünsene, bir ormanda tavşan avlamak için gitmişsin. Ama birden karşına büyük bir ayı çıkarsa ne yaparsın? Belki de sen av yerine av olursun! Bu atasözü bize, bazen bir şeyi yaparken başımıza hiç beklemediğimiz şeyler gelebileceğini anlatır. Yani, başkalarına bir kötülük yapmak isteyenler kendileri zarar görebilir.',
    },
    {
      'id': 9,
      'title': 'Ayağını yorganına göre uzat.',
      'description':
          'Senin bir yorganın var. Bu yorganın boyu senin kadar. Sen yorganın dışına uzanmaya çalışırsan üşürsün, değil mi? Tam da bunun gibi senin kazandığın paranın bir sınırı var. Sen yanlış para harcayarak bu sınırı aşarsan sorun yaşayabilirsin.',
    },
    {
      'id': 10,
      'title': 'Bakarsan bağ olur, bakmazsan dağ.',
      'description':
          'Düşünsene, bahçende küçük bir fide var. Bu fideye su verirsen, güneş ışığına çıkarırsan büyüyerek güzel bir ağaç olur. Ama hiç ilgilenmezsen, su vermezsen kurur ve büyüyüp gelişemez. İşte bu atasözü bize tam olarak bunu anlatıyor. Basitçe Bir şeye özen gösterirsek büyür ve gelişir, ilgilenmezsek bozulur.',
    },
    {
      'id': 11,
      'title': 'Balık baştan kokar.',
      'description':
          'Düşünsene, bir balık çok kötü kokuyor. Neden acaba? Çünkü balığın başı bozulmuş olabilir. Balığın başı bozulunca, bütün balık kötü kokar. Tıpkı bunun gibi bir işin başı iyi olmazsa iyi bitmez, bir organizasyonun yöneticisi iyi olmazsa o organizasyon iş yapamaz.',
    },
    {
      'id': 12,
      'title': 'Başa gelen çekilir.',
      'description':
          'Hayatta bazen istemediğimiz şeyler olur. Örneğin, yağmur yağarken dışarı çıkmak zorunda kalabiliriz veya oyuncağımız bozulabilir. İşte bu atasözü bize, böyle durumlarda üzülmek yerine, olanları kabullenip hayatımıza devam etmemiz gerektiğini söyler.',
    },
    {
      'id': 13,
      'title': 'Bedava sirke baldan tatlıdır.',
      'description':
          'Düşünsene, senin çok sevdiğin bir oyuncağın var. Ama bu oyuncağı sen almadın, biri sana hediye etti. Bu hediye sana kendi oyuncağından bile daha tatlı gelmez mi? İşte bu atasözü de buna benzer.Ücretsiz olarak elde edilen şeyler, bazen çok değerli olan şeylerden bile daha cazip gelebilir.',
    },
    {
      'id': 14,
      'title': 'Besle kargayı, oysun gözünü.',
      'description':
          'Düşünsene, bir kuşu besliyorsun, ona ekmek kırıntıları atıyorsun. Ama bu kuş bir süre sonra sana zarar verebilir. Tıpkı kargaların bazen insanlara zarar vermesi gibi. Yani bazen iyi niyetle yaptığımız şeyler, bize kötü sonuçlar getirebilir.',
    },
    {
      'id': 15,
      'title': 'Bir çöplükte iki horoz ötmez.',
      'description':
          'Düşün ki, bir tavuk kümesinde iki tane horoz var. Bu horozlar birbirleriyle sürekli kavga ederler. Çünkü her ikisi de kümenin en önemli horozu olmak ister. İşte bu atasözü bize, aynı yerde iki kişi en güçlü olmak istediğinde kavga çıkabileceğini anlatır. Aynı yerde iki kişi birden baş olmak istediğinde kavga çıkar.',
    },
    {
      'id': 16,
      'title': 'Bir elin nesi var, iki elin sesi var.',
      'description':
          'Düşünsene, bir kutu legoyu tek başın tek başına yapmak zorundasın. Çok uzun sürer ve belki de bazı parçaları birleştiremesin. Ama bir arkadaşınla birlikte yaparsan, çok daha hızlı ve eğlenceli olur. İşte bu atasözü tam olarak bunu anlatıyor. Basitçe: Bir işi birlikte yaparsak, tek başımıza yapmaktan daha kolay ve hızlı olur.',
    },
    {
      'id': 17,
      'title': 'Bir koltuğa iki karpuz sığmaz.',
      'description':
          'Düşün ki, elinde kocaman iki tane karpuz var. Bu karpuzları aynı anda koltuğa oturarak kucağına almak istesen ne olur? İkisi birden koltuğa sığmaz, değil mi? İşte bu atasözü de buna benzer. Aynı anda iki işi birden yapmaya çalışmak zordur. Her şeyi aynı anda yapamayız. İşlerimizi sırayla yapmalıyız.',
    },
    {
      'id': 18,
      'title': 'Cahile laf anlatmak deveye hendek atlatmaktan güçtür.',
      'description':
          'Düşünsene, çok büyük bir deve var ve sen bu deveye bir hendekten atlamasını söylüyorsun. Bu çok zor, değil mi? İşte bu atasözü, bir şeyi anlamayan birine bir şeyi anlatmanın da bundan daha kolay olmadığını söylüyor. Bir şeyi bilmeyen birine bir şeyi anlatmak çok zordur.',
    },
    {
      'id': 19,
      'title': 'Çoğu zarar, azı karar.',
      'description':
          'Düşün ki, çok tatlı bir şeker var. Bir tane yersen çok mutlu olursun ama çok fazla yersen midesin ağrıyabilir. İşte bu atasözü de buna benzer. Her şeyden azını yemeliyiz, çok yersek zarar görebiliriz.',
    },
    {
      'id': 20,
      'title': 'Damlaya damlaya göl olur.',
      'description':
          'Düşünsene, bir kaba sürekli su damlatıyorsun. Başta küçük bir damla gibi görünebilir ama bir süre sonra o damlalar bir araya gelip büyük bir su birikintisi oluşturur. İşte bu atasözü tam olarak bunu anlatıyor. Küçük küçük şeyler zamanla bir araya gelerek büyük bir şey haline gelir.',
    },
    {
      'id': 21,
      'title': 'Dost acı söyler.',
      'description':
          'Düşünsene, canın çok sıkkın ve arkadaşın sana "Böyle üzülmene gerek yok, daha iyi şeyler olacak." gibi güzel sözler söylüyor. Ama bir başka arkadaşın da sana "Belki de bu durumdan ders çıkarmalısın." gibi biraz daha sert bir şey söylüyor. İşte bu atasözü, ikinci arkadaşının yaptığı gibi, gerçek dostların bazen acı da olsa doğruyu söylediğini anlatır. Gerçek arkadaşlar, senin iyiliğini düşündüğü için bazen hoşuna gitmese bile doğruyu söyler.',
    },
    {
      'id': 22,
      'title': 'Dost bin ise azdır, düşman bir ise çoktur.',
      'description':
          'Düşünsene, senin çok sayıda arkadaşın var dara düştüğünde yalnızca bir san yardım edebildi. İşte bu atasözü, gerçek dostların sayısının az, ama düşmanların tek bir kişi olsa bile çok zarar verebileceğini anlatır. İyi arkadaşlarımız az olabilir ama kötü niyetli bir arkadaşımız bile bize çok zarar verebilir. Bu yüzden arkadaşlarımızı olabildiğince artırmalı, düşmanlarımızı azaltmalıyız.',
    },
    {
      'id': 23,
      'title': 'El elden üstündür.',
      'description':
          'Düşün ki, bir yapboz yapmaya çalışıyorsun. Tek başına yapmaya çalıştığında bazı parçaları birleştiremiyorsun. Ama yapboz yapmada yetenekli bir arkadaşın sana yardım ederse yapboz çok daha çabuk tamamlanır. İşte bu atasözü de buna benzer. Bir kimseden üstün birileri olabilir.',
    },
    {
      'id': 24,
      'title': 'Emanet ata binen tez iner.',
      'description':
          'Düşünsene, arkadaşının bisikleti var ve sen o bisikletle bir yere gitmek istiyorsun. Bisikleti birkaç kere ödünç alıyorsun. Sonra arkadaşının işi çıkıyor ve bisikleti ödünç vermiyor. İşte bu atasözü de buna benzer. Basitçe: Ödünç aldığın eşyalarla bir işi her zaman yürütemezsin.',
    },
    {
      'id': 25,
      'title': 'Ev alma komşu al.',
      'description':
          'Yeni bir eve taşındığını düşün. Evin çok güzel olabilir ama yanındaki evde oturan insanlar iyi değilse, sen de mutlu olamazsın. İşte bu atasözü tam olarak bunu anlatıyor. Komşularımızla birlikte yaşarız. Onlarla oyun oynar, onlarla konuşuruz. İyi komşularla olmak bizi mutlu eder. Kötü komşular ise bizi üzebilir.',
    },
    {
      'id': 26,
      'title': 'Gülme komşuna, gelir başına.',
      'description':
          'Düşünsene, arkadaşının yaptığı bir hatayı görüp ona gülüyorsun. Ama bir gün sen de aynı hatayı yapabilirsin. İşte bu atasözü tam olarak bunu anlatıyor. Başkalarına gülmek doğru değildir, çünkü bir gün aynı durum senin de başına gelebilir.',
    },
    {
      'id': 27,
      'title': 'Güneş balçıkla sıvanmaz.',
      'description':
          'Düşünsene, parlak, güzel bir güneşi alıp üzerine çamur sürüyoruz. Ne kadar çamur sürersek sürelim, güneş yine de parlaklığını koruyacak değil mi? İşte bu atasözü de tam olarak bunu anlatıyor. Herkesin bildiği, apaçık ortada olan şeyleri saklayamazsın.',
    },
    {
      'id': 28,
      'title': 'Güneş girmeyen eve doktor girer.',
      'description':
          'Düşünsene, odan çok karanlık ve pencereler hep kapalı. Bu odada ne kadar kalırsan kal, kendini iyi hissetmezsin, değil mi? İşte bu atasözü de buna benzer. Evi güneş almazsa, içinde yaşayan insanlar hastalanabilir. Neden? Çünkü güneş ışığı bizim için çok önemli. Güneş ışığı sayesinde kemiklerimiz güçlenir, hastalıklara karşı daha dirençli oluruz ve daha mutlu oluruz. Ama evimiz karanlıksa, güneş ışığından yeterince faydalanamayız ve hastalanabiliriz.',
    },
    {
      'id': 29,
      'title': 'Her yiğidin bir yoğurt yiyişi vardır.',
      'description':
          'Düşün ki, sen ve arkadaşların aynı yemeği yiyorsunuz. Bazınız çorbayı çok seviyor, bazınız ise makarnayı. Yani herkesin sevdiği yemek farklı, değil mi? İşte bu atasözü de buna benzer. Herkesin farklı özellikleri ve farklı yapma şekli vardır.',
    },
    {
      'id': 30,
      'title': 'İki cambaz bir ipte oynamaz.',
      'description':
          'Tilki ile karga hikâyesini biliyorsun, değil mi? Kurnaz tilki, kargayı kandırarak peyniri düşürmesini sağlıyor. Bu durumda ise iki tane tilki var. Bu iki tilki de kurnaz. Bu yüzden birbirlerini kandıramıyorlar. Bu atasözü de bunu anlatıyor. Eşit derecede kurnaz olan iki kimse birbirini aldatamaz.',
    },
    {
      'id': 31,
      'title': 'Kara haber tez duyulur.',
      'description':
          'Düşün ki, arkadaşınla güzel bir oyun oynuyorsun. Tam eğlenirken kötü bir haber alıyorsun. Bu haber, diğer güzel haberlere göre daha çabuk yayılıyor gibi değil mi? İşte bu atasözü de tam olarak bunu anlatıyor. Kötü haberler, iyi haberlere göre daha hızlı yayılır.',
    },
    {
      'id': 32,
      'title': 'Keskin sirke küpüne zarar.',
      'description':
          'Düşünsene, çok keskin bir sirke var. Bu sirke o kadar keskin ki, içinde bulunduğu kabı bile aşındırıyor. İşte bu sirke gibi çok kızan, çok öfkelenen kişi kendine zarar verir.',
    },
    {
      'id': 33,
      'title': 'Körle yatan şaşı kalkar.',
      'description':
          'Etrafımızda olan kişilerle, arkadaşlarımızla birbirimize benzemeye başlarız. İyi arkadaşlarımız varsa onlara benzeyerek iyi huylar ediniriz. Ama değersiz, kötü arkadaşlarımız olursa kötü huylar edinebiliriz. Arkadaş seçerken dikkatli olmamız lazım.',
    },
    {
      'id': 34,
      'title': 'Lafla peynir gemisi yürümez.',
      'description':
          'Düşün ki, oyuncak gemin var ve sen onu hareket ettirmek istiyorsun. Sadece ona "yürü" diye bağırırsan gemi hareket eder mi? Tabii ki hayır! Gemiyi hareket ettirmek için onu itmen veya çekmen gerekir. İşte bu atasözü de buna benzer. Sadece konuşarak işi tamamlayamazsın. Çalışman, bir şeyler yapmak gerekir.',
    },
    {
      'id': 35,
      'title': 'Mart kapıdan baktırır, kazma kürek yaktırır.',
      'description':
          'Mart ayı geldiğinde hava ısınmaya başlar ve güneş yüzünü gösterir. Bu yüzden insanlar, artık kışın bittiğini düşünürler ve kalın kıyafetlerini kaldırırlar. Ama Mart ayı bazen bizi kandırabilir. Hava birden soğuyabilir ve kar yağabilir. İnsanlar bu duruma hazırlıklı olmadığı için, yakacak odunları bitmiş olabilir. Bu durumda, evlerini ısıtmak için ellerine geçen her şeyi yakmak zorunda kalabilirler. Hatta bazen kazma kürek gibi odunları bile yakabilirler. Bu da bize her daim hazırlık olmamız gerektiğini söyler.',
    },
    {
      'id': 36,
      'title': 'Minareyi çalan kılıfını hazırlar.',
      'description':
          'Düşünsene, çok büyük bir yanlış iş yapıyorsun. Örneğin, okulda arkadaşının oyuncağını alıyorsun. Bu çok yanlış bir davranış, değil mi? Bu yanlış davranıştan sonra yakalanmamak için ne yaparsın? Belki de oyuncağı geri götürürsün ya da yalan söylersin. İşte bu atasözü de buna benzer. Büyük bir yanlış iş yapan kişi, yakalanmamak için önceden bir şeyler yapmaya çalışır.',
    },
    {
      'id': 37,
      'title': 'Mum dibine ışık vermez.',
      'description':
          'Düşün ki, odada bir mum yakıyorsun. Mumun en çok nereyi aydınlattığını sanırsın? Muhtemelen mumun etrafındaki yerleri, değil mi? Ama mumun tam altındaki yer karanlık kalır. İşte bu atasözü de buna benzer. Bu mum gibi insanlar da kendi yakınlarına yardımcı olamaz.',
    },
    {
      'id': 38,
      'title': 'Ne ekersen onu biçersin.',
      'description':
          'Düşün ki, bahçene bir tohum ekmişsin. Bu tohumdan ne çıkacağını biliyor musun? Elbette, o tohumun çeşidine göre bir bitki çıkacak. Eğer elma ağacı tohumu eksen, elma ağacı, eğer karpuz tohumu eksen karpuz olur. İşte bu atasözü de buna benzer.Sen önceden ne yaparsan, onun karşılığını alırsın. İyi bir şey yaparsan sana iyilik olarak döner. Kötü bir şey yaparsan sonra sen zarar görürsün.',
    },
    {
      'id': 39,
      'title': 'Öfke ile kalkan zararla oturur.',
      'description':
          'Düşün ki, çok kızgın bir şekilde arkadaşınla tartışıyorsun. O sırada çok kötü şeyler söyleyebilirsin. Sonra bu söylediklerine pişman olabilirsin ve arkadaşınla aran bozulabilir. İşte bu atasözü de buna benzer. Çok kızdığımız zaman yaptığımız şeyler, sonradan bize zarar verebilir.',
    },
    {
      'id': 40,
      'title': 'Parayı veren düdüğü çalar.',
      'description':
          'Mesela bir oyuncağı almak istiyorsun. Ama paran yok. Paran olmadığı için oyuncağı alamayacaksın ama parası olan bir arkadaşın bu oyuncağı alabilecek. Yani ancak karşılığını ödersen istediğini elde edebilirsin.',
    },
    {
      'id': 41,
      'title': 'Sabır acıdır, meyvesi tatlıdır.',
      'description':
          'Düşünsene, çok istediğin bir oyun var ama hemen şimdi alamayacaksın. O oyunu alabilmek için biraz beklemen gerekiyor. Beklemek bazen zor olabilir ama sonunda oyununu aldığında çok mutlu olacaksın, değil mi? İşte bu atasözü de buna benzer. Bir şeyi çok istediğimizde sabırlı olmak zor olsa da, sonunda güzel sonuçlar alırız.',
    },
    {
      'id': 42,
      'title': 'Sabreden derviş, muradına ermiş.',
      'description':
          'Düşün ki, çok istediğin bir oyuncak var ama hemen şimdi alamayacaksın. O oyuncağı alabilmek için biraz beklemen gerekiyor. Beklemek bazen zor olabilir ama sonunda oyununu aldığında çok mutlu olacaksın, değil mi? İşte bu atasözü de buna benzer. Bir şeyi çok istediğimizde sabırlı olmak zor olsa da, sonunda güzel sonuçlar alırız.',
    },
    {
      'id': 43,
      'title': 'Sakla samanı gelir zamanı.',
      'description':
          'Düşün ki, doğum günün için biriktirdiğin harçlıkların var. Bu parayı hemen harcamak yerine, oyuncağını almak için biriktiriyorsun. İşte bu atasözü de buna benzer. İhtiyacımız olacak şeyleri saklarsak, sonra işimize yarar.',
    },
    {
      'id': 44,
      'title': 'Terzi kendi söküğünü dikemez.',
      'description':
          'Düşün ki, oyuncaklarını tamir eden bir tamirci var. O, başkalarının oyuncaklarını çok güzel tamir ediyor ama kendi oyuncağı bozulduğunda tamir etmekte zorlanıyor. İşte bu atasözü de buna benzer. Bazen bir işi çok iyi yapsan bile, kendi işini yapmakta zorlanabilirsin.',
    },
    {
      'id': 45,
      'title': 'Ucuz etin yahnisi yavan olur.',
      'description':
          'Düşün ki, pazardan çok ucuz bir elma almışsın. Bu elma diğer elmalara göre çok daha ucuz olduğu için çok sevinmişsin. Ama eve gelip yediğinde, bu elmanın tadının diğer elmalar kadar güzel olmadığını fark etmişsin. İşte bu atasözü de buna benzer. Çok ucuz olan şeyler genelde iyi olmaz.',
    },
    {
      'id': 46,
      'title': 'Üzüm üzüme baka baka kararır.',
      'description':
          'Düşün ki, bir kutu içinde yan yana duran elmalar var. Zamanla bu elmaların rengi yavaş yavaş değişmeye başlar ve hepsi aynı renge döner. İşte üzümün de böyle bir özelliği var. Yan yana duran üzümler birbirine bakınca aynı renge bürünüyor. Yani arkadaşlarımızın davranışları bizi de etkiler. İyi arkadaşlar seçmeliyiz.',
    },
    {
      'id': 47,
      'title': 'Yuvarlanan taş yosun tutmaz.',
      'description':
          'Bu atasözü olumsuz bir şeydir aslında. Düşün ki, bir taş var ve bu taş durmadan bir yerden bir yere yuvarlanıyor. Bu taş sürekli hareket ettiği için üstünde hiç yosun bitmiyor. İşte bu atasözü de buna benzer. Sürekli yer değiştiren şeyler üzerinde hiçbir şey kalıcı olmaz.',
    },
    {
      'id': 48,
      'title': 'Zararın neresinden dönülse kârdır.',
      'description':
          'Düşün ki, oyuncağın bozuldu ve çok üzüldün. Ama sonra tamir yerine gidip oyuncağını tamir ettirmeye karar verdin. Oyuncağın tamir edilmesi biraz zaman alacak ve biraz da para harcayacaksın ama en azından oyuncağın yine senin olacak. İşte bu atasözü de buna benzer. Bir hata yaptıktan sonra hataya devam etmek yerine hemen düzeltmeye çalışmak en iyisidir.',
    },
  ];

  static const List<Map<String, dynamic>> deyimler = [
    {
      'id': 1,
      'title': 'Abayı yakmak',
      'description':
          'Bir şeye çok ama çok bağlanmak, o şey olmadan yapamaz hâle gelmek demek. Bir şeye gönül vermek, âşık olmak demek. Mesela, en sevdiğin oyuncağın olmadan çok üzülürsün, değil mi? İşte bir şeye senin oyuncağına bağlandığın kadar bağlanmak "abayı yakmak" demek.',
    },
    {
      'id': 2,
      'title': 'Ağırdan almak',
      'description':
          'Bir işi hemen yapmamak, acele etmeden yavaş yavaş yapmak demektir. Tıpkı bir yarışta sonuncu olmak istemeyen bir koşucunun yavaş yavaş koşmasına benzer.',
    },
    {
      'id': 3,
      'title': 'Ağzı açık kalmak',
      'description':
          'Çok şaşırmak, hayret etmek demektir. Bir şey gördüğümüzde veya bir şey duydumuzda çok şaşırırsak, ağzımız kendiliğinden açılabilir. İşte tam bu durumda "ağzımız açık kaldı" deriz.',
    },
    {
      'id': 4,
      'title': 'Ağzı kulaklarına varmak',
      'description':
          'Çok ama çok sevinmek demektir. O kadar sevinirsin ki, sanki ağzın kulağına kadar uzamış gibi olur. Mesela, doğum gününde çok güzel bir hediye aldığında veya çok istediğin bir oyuncağa kavuştuğunda ağzın kulağına varabilir.',
    },
    {
      'id': 5,
      'title': 'Ağzında bakla ıslanmamak',
      'description':
          'Ağzındaki baklayı hemen çıkarmak demektir. Yani öyle ki bakla ıslanacak vaktı bulamaz! Bu da sır saklayamamak anlamına gelir.',
    },
    {
      'id': 6,
      'title': 'Akla karayı seçmek',
      'description':
          'Bir iş için çok ama çok uğraşmak, zorlanmak demektir. Mesela, çok zor bir bulmacayı çözmeye çalıştığında veya çok zor bir ödev yapmaya çalıştığında akla karayı seçmiş olursun. Bu deyim, bir işin ne kadar zor olduğunu anlatmak için kullanılır.',
    },
    {
      'id': 7,
      'title': 'Aklı karışmak',
      'description':
          'Bir şeyleri anlayamamak, kafası karışmak demektir. Mesela, bir bulmacayı çözmeye çalışırken çok fazla seçenek olunca aklımız karışabilir. Ya da arkadaşlarımızla bir oyun oynarken kurallarını unutup karışabiliriz. İşte böyle durumlarda "aklım karıştı" deriz.',
    },
    {
      'id': 8,
      'title': 'Aklını peynir ekmekle yemek',
      'description':
          'Doğru düşünmemek, aptalca şeyler yapmak demektir. Tıpkı peynir ekmeğini yemek gibi basit bir şeyi yaparken bile düşünmeden hata yapabilmek gibi. Bu deyimi kullandığımızda, birinin yaptığı bir işin çok anlamsız olduğunu ve o kişinin doğru düşünmediğini söylemek isteriz.',
    },
    {
      'id': 9,
      'title': 'Aralarından su sızmamak',
      'description':
          'İki kişinin veya bir grup insanın birbirine çok yakın, samimi arkadaşlar olması demektir. Sanki aralarında hiç boşluk yokmuş gibi, birbirlerini çok iyi anlarlar. İki arkadaşın arasına su sızmazsa, onlar her zaman birbirlerine destek olur ve sırlarını birbirleriyle paylaşırlar.',
    },
    {
      'id': 10,
      'title': 'Ateş püskürmek',
      'description':
          'Çok ama çok sinirlenmek demektir. Bir volkanın ateş püskürmesi gibi, çok kızdığımız zaman biz de içimizden ateşler saçıyormuş gibi hissederiz. Yüzümüz kızarır, sesimiz yükselir ve bazen istemeden kötü sözler söyleyebiliriz.',
    },
    {
      'id': 11,
      'title': 'Ayvayı yemek',
      'description':
          'Büyük bir sıkıntıya girmek, kötü bir duruma düşmek demektir. Tıpkı çok acı bir şey yemiş gibi üzülmek veya zor durumda kalmak gibidir. Bu deyimi kullandığımızda, birinin yaptığı bir hata yüzünden kötü sonuçlar yaşadığını anlatırız.',
    },
    {
      'id': 12,
      'title': 'Başına çorap örmek',
      'description':
          'Birine gizlice kötü bir şey yapmak veya onu zor duruma düşürmek için plan yapmak demektir. Tıpkı birine fark ettirmeden arkasından iş çevirmek gibi düşünebilirsin. Bu deyimi kullandığımızda, birinin başka birine kötülük etmek istediğini anlatırız.',
    },
    {
      'id': 13,
      'title': 'Başından aşağı kaynar sular dökülmek',
      'description':
          'Çok ama çok üzüntülü olmak demektir. Bir şeyden çok kötü etkilenip içimizden ateşler çıkmış gibi hissettiğimizde bu deyimi kullanırız. Örneğin, çok sevdiğimiz bir oyuncağımız kırıldığında ya da çok istediğimiz bir şeye kavuşamadığımızda başımızdan aşağı kaynar sular dökülür gibi hissederiz.',
    },
    {
      'id': 14,
      'title': 'Beti benzi atmak',
      'description':
          'Çok korkmak veya çok şaşırmak demektir. Örneğin, birden bire karşımıza büyük bir hayvan çıksa veya çok korktuğumuz bir şeyle karşılaşsak, o kadar şaşırırız ki yüzümüz bembeyaz kesilir. İşte bu duruma "beti benzi atmak" denir. Yani, korkudan veya şaşkınlıktan yüzümüzün rengi değişir, soluklaşır.',
    },
    {
      'id': 15,
      'title': 'Bindiği dalı kesmek',
      'description':
          'Kendisine faydası olan bir şeyi kendi eliyle yok etmek demektir. Tıpkı bir kuşun konduğu dalı kesmesi gibi, biz de bazen kendi iyiliğimiz için yaptığımız bir şeyi bozabiliriz. Bu deyim, genellikle yanlış kararlar vererek kendimizi zor duruma soktuğumuzda kullanılır.',
    },
    {
      'id': 16,
      'title': 'Buluttan nem kapmak',
      'description':
          'Çok küçük bir şeyden çok üzülmek veya çok sinirlenmek demektir. Tıpkı bir bulutun en ufak bir rüzgarda bile hareket etmesi gibi, biz de bazen çok küçük bir olay yüzünden çok üzülüp bozulabiliriz. Bu deyimi kullandığımızda, birinin çok alıngan olduğunu ve kolayca kırıldığını anlatırız.',
    },
    {
      'id': 17,
      'title': 'Çam devirmek',
      'description':
          'Karşısındaki kişiye dokunacak veya kötü bir sonuç doğuracak bir söz söylemektir. Mesela izlediğin bir filmi hiç beğenmemişsindir ve bir arkadaşına bu filmi hiç beğenmediğini anlatırsın. Ama arkadaşın da filmi çok beğenmiştir. Bu durumda çam devirmiş olursun.',
    },
    {
      'id': 18,
      'title': 'Çantada keklik',
      'description':
          'Bir işin çok kolay ve zahmetsiz olacağı anlamına gelir. Tıpkı avcıların kolayca yakalayabildikleri bir kuş türü olan kekliği avlamak gibi, bu deyimle anlatılan iş de çok kolayca hallolur. Yani, hiç uğraşmadan, çok çaba sarf etmeden istediğimiz şeye ulaşabiliriz.',
    },
    {
      'id': 19,
      'title': 'Çivi kesmek',
      'description':
          'Çok üşümek demektir. Kışın soğuk havada dışarı çıktığımızda veya buzdolabına çok uzun süre elimizi soktuğumuzda vücudumuz üşür ve titremeye başlar. İşte bu durumda "çivi kesmek" deriz. Yani, o kadar üşürüz ki vücudumuzun her yeri buz gibi olur ve sanki içindeki kan donmuş gibi hissederiz.',
    },
    {
      'id': 20,
      'title': 'Dizini dövmek',
      'description':
          'Bir işten çok pişman olmak demektir. Örneğin, yanlış bir şey yaptığımızda veya bir fırsatı kaçırdığımızda kendimizi çok kötü hissederiz. İşte bu durumda "dizimi dövüyorum" diyebiliriz. Yani, yaptığımız hatadan dolayı çok üzülür ve kendimizi suçlarız.',
    },
    {
      'id': 21,
      'title': 'Defterden silmek',
      'description':
          'Birini hayatımızdan tamamen çıkarmak, onunla olan tüm bağlarımızı koparmak demektir. Tıpkı bir defterde yazılmış bir şeyi silgiyle sildiğimizde o yazının yok olması gibi, biz de birini defterimizden sildiğimizde onunla olan tüm anılarımızı ve ilişkilerimizi unutmaya çalışırız. Bu deyim genellikle çok kızdığımız veya çok üzüldüğümüz birine karşı kullanılır.',
    },
    {
      'id': 22,
      'title': 'Etekleri tutuşmak',
      'description':
          'Çok heyecanlanmak veya çok telaşlanmak demektir. Tıpkı eteğimizde ateş yakalandığında telaşlanıp koşturmamız gibi, bu deyimle anlatılan durum da bizi çok heyecanlandırır veya telaşlandırır. Örneğin, doğum günün yaklaşırken veya sınava girmeden önce eteklerin tutuşabilir. Yani çok heyecanlanırız.',
    },
    {
      'id': 23,
      'title': 'Etekleri zil çalmak',
      'description':
          'Çok sevinmek ve heyecanlanmak demektir. Tıpkı güzel bir haber aldığımızda içimizden ziller çalıyor gibi hissederiz ya, işte o duyguyu anlatır bu deyim. Mesela, doğum günün yaklaşırken veya beklenmedik bir hediye aldığında eteklerin zil çalabilir. Yani çok mutlu olursun.',
    },
    {
      'id': 24,
      'title': 'Göz atmak',
      'description':
          'Bir şeye hızlıca bakmak, üzerinde durmadan incelemek demektir. Tıpkı bir mağazada beğendiğimiz bir oyuncağa hemen şöyle bir göz attığımız gibi, bu deyimle anlatılan durum da böyledir. Bir kitabı karıştırmak, bir resme kısaca bakmak gibi durumlarda "göz atmak" deriz.',
    },
    {
      'id': 25,
      'title': 'Hapı yutmak',
      'description':
          'Çok zor bir duruma düşmek, istemediğimiz bir şeyi kabul etmek zorunda kalmak demektir. Tıpkı hiç sevmediğimiz bir ilacı içmek zorunda kalmak gibi, bu deyimle anlatılan durum da bizi hiç mutlu etmez. Örneğin, bir oyun kaybettiğimizde veya bir sınavda başarısız olduğumuzda "hapı yuttum" diyebiliriz.',
    },
    {
      'id': 26,
      'title': 'İpe un sermek',
      'description':
          'Bir işten kaçmak için bahaneler uydurmak demektir. Örneğin, ödevini yapmak istemeyen bir çocuk, "Bugün çok yorgunum", "Kalemim yok" gibi bahaneler uyduruyorsa işte o zaman "ipe un seriyormuş" gibi olur. Yani, yapması gereken işi yapmamak için çeşitli bahaneler buluyor.',
    },
    {
      'id': 27,
      'title': 'Kabak başına patlamak',
      'description':
          'Bir işin kötü sonuçlanması ve bunun sadece bir kişiye zarar vermesi demektir. Tıpkı bir oyun oynarken sadece sen kaybedersen ve diğer arkadaşların kazanırsa, bu durum senin için "kabak başına patlamak" gibi olur. Yani bütün kötü sonuçlar senin başına gelir.',
    },
    {
      'id': 28,
      'title': 'Kedi gibi dört ayak üstüne düşmek',
      'description':
          'Çok zor bir durumdan bile hiç zarar görmeden kurtulmak demektir. Kedi düştüğünde hemen dört ayağı üzerine düşerek kendini korur ya, işte bu deyim de tam olarak bunu anlatır. Yani ne kadar zor bir durum olursa olsun, bu kişi her zaman iyi bir şekilde atlatır.',
    },
    {
      'id': 29,
      'title': 'Kulağına küpe olmak',
      'description': '',
    },
    {
      'id': 30,
      'title': 'Küplere binmek',
      'description':
          'Başa gelen bir durumdan ders çıkarmak ve bu dersi unutmamak demektir. Tıpkı bir küpeyi kulağımıza taktığımızda onu her zaman taşıdığımız gibi gibi, bu ders de aklımızda kalır ve unutmayız. Mesela okula gelirken kalemimizi unuttuğumuzda bu kulağımıza küpe olur ve her akşam çantamızı hazırlarken kalemimizi kontrol ederiz.',
    },
    {
      'id': 31,
      'title': 'Ok yaydan çıkmak',
      'description':
          '"Ok yaydan çıkınca geri dönmez" derler ya, işte tam olarak bu deyimin anlamı bu! Bir ok yaydan çıkınca geri dönemez, değil mi? Tıpkı ok gibi, söylediğimiz bir söz veya yaptığımız bir iş geri alınamaz. Örneğin, bir arkadaşına kızdın ve ona kötü bir söz söyledin. Bu sözünü geri alamazsın. İşte bu duruma "ok yaydan çıktı" denir. Yani iş işten geçti, geri dönüşü yok demektir.',
    },
    {
      'id': 32,
      'title': 'Pireyi deve yapmak',
      'description':
          'Küçük bir şeyi çok büyütmek, abartmak demektir. Mesela, oyuncağını kaybettiğin için çok üzülüyorsan ve sanki dünyanın sonuymuş gibi davranıyorsan, işte o zaman "pireyi deve yapıyorsun" denir. Yani küçük bir sorunu çok büyütüyor, abartıyorsun demektir.',
    },
    {
      'id': 33,
      'title': 'Saman alevi gibi parlamak',
      'description':
          'Bir kişinin çok kısa süreliğine öfkelenip ortaya çıkıp sonra hemen yatışması demektir. Saman alevi çok çabuk yanar ve söner ya, işte bu deyim de tam olarak bunu anlatır. Bir iş ya da bir duygu çok hızlı bir şekilde ortaya çıkar ama hemen de kaybolur.',
    },
    {
      'id': 34,
      'title': 'Şifayı kapmak',
      'description':
          'Hasta olmak demektir. Bilirsin, hasta olduğumuzda doktora gider ve şifa yani ilaç alırız, değil mi? Ama bu deyim tam tersini anlatır. "Şifayı kapmak" aslında hastalanmak anlamına gelir. Yani birisi sana "Şifayı kapmışsın!" derse, senin hasta olduğunu söylemek istemiştir.',
    },
    {
      'id': 35,
      'title': 'Yağmurdan kaçarken doluya tutulmak',
      'description':
          'Bir kötü durumdan kurtulmak isterken daha kötü bir duruma düşmek demektir. Yağmurdan kaçarken daha tehlikeli olan doluya yakalanmak gibi, bir sıkıntıdan kurtulmaya çalışırken daha büyük bir sıkıntıya girmek anlamına gelir.',
    },
  ];
}
