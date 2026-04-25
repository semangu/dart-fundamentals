void main() {

  // musterinin adını tut
  // musterinin parasini ogren
  // musteriye merhaba diyip parasını söyle
  // bizim bankaya geldiği için parasına +5 tl ekle

  print("Hello" + '${25 + 5}');

  int userMoney = 25;
  String userName = "Jake";
  userMoney = userMoney + 5;

  print("Hello $userName $userMoney");

  print("-------------");
  userMoney = userMoney - 10;

  print('You lost money $userMoney');
  userMoney += 5;

  userMoney = (userMoney ~/ 2); // ~ bölüp alt değerine atıyor
  double amyMoney = 15.2;

  amyMoney = amyMoney / 2;
  print("You lost half of your money, Amy $amyMoney");
  print("You lost half of your money, Jack $userMoney");


// yeni bir user adı oluştur
// yeni bir para ver
// bu parayi 20ye bol ve ekranda göster

String userName1 = 'Charles';
double user1money = 50;
user1money = user1money / 20;

print("$userName1 $user1money");

}