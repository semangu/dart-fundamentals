// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {

  IDatabase database = SQL();
  database = Mongo();
  database.write();
}

//S her class kendi işini yapacak
class UserManager {
  String name;
  UserManager({
    required this.name,
  });

  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization(){
    manager.changeUserName('a');
    changeLocalization();
  }

  void changeLocalization() {
    print('object');
  }
}

//O - core sınıfı değiştirmeden yeni özellikler ekleyebilmeliyiz
class Product{
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {

  ProductCategories(String name, String money) : super(name, money);

  final String category = 'food';

}
// L - alt sınıflar birbirleri ile değiştirilebilir olması lazım
abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
  }
}

// I - sınıflar sadece ihtiyaç duyulan operasyonları içermeli

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();

}
mixin IUserLocation {
  void locationChange();
} 
mixin ILanguage {
  void language();
}
class UserLocation implements IUserLocation {
  @override
  void locationChange() {
  }
}

// D - super sınıflar ile alt sınıfların birbirlerine bağımlılığı olmamalı

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead Iphone;

  DeviceCameraManager(this.Iphone);

  @override
  void readQR() {
  }
}
class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
  }
}