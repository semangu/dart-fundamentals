void main() {
  String userName = "Ned";

  final int bankMoney = 100; // değiştirilmiyor, bir kere değer atanır. Run time'daki son değeri alır.
  const String bankName = "ABC Bank"; // bu da değişmiyor. Compile edildiği an neyse odur. 
  var userName2 = 'Catelyn';
  var userName2Money = 15;

  userName2Money -= 10;

// ------
// Bank name = "ABC BANK"
// Bank user 1 = "bank1musteri"
// Bank user 1 in parası 100.000
// Bank1 musteriye kimse dokunamaz!

// yeni bir musteri gelecek adı bank2musteri
// yeni bankaya gelenden bu bank user1 parasını çıkartıp ekrana gösterecek

  const String bankNameSpecial = "ABC Bank";
  final user1 = "Bank 1 musteri";
  const double user1money = 100.00;

  const String user2 = "Bank 2 musteri";
  int user2Money = 500;

  user2Money = user2Money - user1money.toInt();

  print("$user2Money");

/* Odev2
  Benim bir halı saham var 100 kişi kapasiteli
  saat 10da 20 kişiiik bir musteri1 mac yapacak ve 20 kisi kesin gelecek.
  saat 10da musteri2 gelip bana 50 kisilik yer ayırtacak. 
  bu islem sonrasında benim halı saha kapasitem kaç kalmıştır?
  hint
  int sum = musteri1 + musteri2
  print total(const) - sum
*/
  final int haliSaha = 100;
  const int musteri1 = 20;
  var musteri2 = 50;

  //musteri2 5 kişi gelmekten vazgeçmiş olsun

  musteri2 = musteri2 - 5;
  int sum = musteri1 + musteri2;
  print("Kalan kapasite: ${haliSaha - sum}");

}