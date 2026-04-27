void main() {
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print("musteri 1 parası: ${moneys[0]}");

  moneys.sort(); // azdan çoğa sıralar
  moneys.add(400); // listeye eleman ekler
  moneys.insert(2, 250); // istediğimiz indexe eleman ekler
  print(moneys);

  newMoneys.add(5);
  newMoneys.clear(); // listeyi temizler
  print(newMoneys);

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  moneyCustomerNews.sort();
  for(int i = 0; i < moneyCustomerNews.length; i++) {
    print("musteri ${i + 1} parası: ${moneyCustomerNews[i]}");
    if(moneyCustomerNews[i] > 35) {
      print("kredi hazır");
    } else if(moneyCustomerNews[i] > 0) {
      print("kredi için biraz daha çalışmalısın");
    } else {
      print("kredi için hiç şansın yok");
    }
  }
  print("----------");
  for(int index = moneyCustomerNews.length - 1; index >= 0; index--) {
    print("musteri ${index + 1} parası: ${moneyCustomerNews[index]}");
    if(moneyCustomerNews[index] > 35) {
      print("kredi hazır");
    } else if(moneyCustomerNews[index] > 0) {
      print("kredi için biraz daha çalışmalısın");
    } else {
      print("kredi için hiç şansın yok");
    }
  }
}