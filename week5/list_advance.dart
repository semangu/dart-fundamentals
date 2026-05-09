// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'class_singleton.dart';

void main() {
  final model = CarModel(
    category: CarModels.bmw,
    name: 'bmw x5',
    money: 12,
    isSecondHand: false,
  );

  final carItems = [
    CarModel(category: CarModels.yamaha, name: 'yamaha r1', money: 45),
     
    CarModel(
      category: CarModels.bmw,
      name: 'bmw x5',
      money: 12,
      isSecondHand: false,
      users : [User('Sema','aa')],
    ),

    CarModel(
      category: CarModels.toyota,
      name: 'toyota corolla',
      money: 44,
      isSecondHand: true,
    ),
    CarModel(
      category: CarModels.bmw,
      name: 'bmw 3456',
      money: 33,
      isSecondHand: false,
    ),
    CarModel(category: CarModels.toyota, name: 'toyota 0ye', money: 55),
  ];

  final resultCount = carItems
      .where((element) => element.isSecondHand == true)
      .length;
  print(resultCount);

  final newCar = CarModel(
    category: CarModels.bmw,
    name: 'bmw x5',
    money: 12,
    isSecondHand: false,
  );

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("Bu araba bizde var");
  } else {
    print("Bu araba bizde yok");
  }

  final resultBmwMore20 = carItems.where((element){

    return element.category == CarModels.bmw && element.money > 20;
  }).join();
  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(', '); // map ile elementlerin isimlerine göre yeni obje oluşturduk ve join ile de onları yan yana gösterdik
  print(carNames);

  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
  }
  catch (e) {
    print("Bu araba bizde yok");
  } finally { // her türlü iki senaryoda da çalışacak
    print("Araba arama işlemi tamamlandı");
  }

  final index = carItems.indexOf(newCar);
  print(index);

  final _mercedes = CarModel(category: CarModels.mercedes, name: 'mercedes c200', money: 66);
  carItems.add(_mercedes);
  carItems.sort((first, second) => second.money.compareTo(first.money)); // paraya göre sıralama yapar
  print(carItems);

  final users = carItems.expand((element) => element.users).toList(); // her bir elementin ismini ve parasını tek bir listede toplar
  print('Users: $users');
  
  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

//benim bi arabalar sınıfım olacak
//arabaların modeli ismi, parasi kesin olacak sehri olmayacak, ikinci el durumu eger musteri soylemezse
// her ürün ikinci el olarak kabul edilecek
//benim 5 tane arabam olacak
// arabalarımın kaç tanesi ikinci el?
// yeni araba geldi ama bizde var gibi hissediyorum doğru mu?
//bana bmw olan ve moneyi 20den büyük olan arabarı söyler misin
// sadece isimleri yan yana gösterir misin
// benim elimde mercedes var mı?
// yeni gelen arabaya var demiştin kaçıncı sırada söyler misin?
// yeni araba aldım mercedes ekler misin
//ben bütün arabalarımı user yapıcam
// son ekleneni silelim
// bmw olan veya 30dan düşük olanları silelim

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  List<User> users;

  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users = const [],
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }
  @override
  String toString() {
    // TODO: implement toString
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
