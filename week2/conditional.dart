void main() {
  //if else
  int money = 15;
  String userName = "Sema";
  //bool --- 0,1
  bool isCustomerRich = false;
  print('$money $userName');

  if (money > 10) {
    print("You are rich, $userName");
  } else {
    print("You are poor, $userName");
  }

  money = money - 10;
  if (money > 10) {
    print("You are too rich, $userName");
  } else {
    print("You are poor, $userName");
  }
  //
  //musteri bankaya gelir ve 10 tlsi vardır, bir sorgu yapar
  //sorgu sonucu 20 tlsi alınır fakat eğer parası sorguya yeterliyse
  // Eğer kalan parası sıfırdan küçükse bankadan kovulur.
  // Eğer parası banking costa yetmiyorsa bankaya almayın
  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("Hoşgeldiniz, $userName");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print("Lütfen sıra alınız, $userName");
  } else {
    print("$userName bankaya giremezsiniz");
  }

  /*
  bir magazaya isim verilecek
  ornek isimler toplanır
  ornek isimler: ahmeti mehmeti veli, kx, x
  magaza sadece karakter uzunluğu iki veya ikinin altı olanları istiyor
  magazada bu kosullara uyanları yan yana görmek istiyorum aralarında boslukla

  */
  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "KX";
  final String xCompany = "X";

  const int companyLength = 2;
  String results = "";

  if (ahmetCompany.length <= companyLength) {
    results += ahmetCompany + " ";
  }
  if (mehmetCompany.length <= companyLength) {
    results += mehmetCompany + " ";
  }
  if (veliCompany.length <= companyLength) {
    results += veliCompany + " ";
  }
  if (kxCompany.length <= companyLength) {
    results += kxCompany + " ";
  }
  if (xCompany.length < companyLength) {
    results += xCompany + " ";
  }
  if (results.length == 0) {
    results = "Mağazaya uygun isim bulunamadı";
  }
  print(results);
}
