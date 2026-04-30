// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'model/product_config_model.dart';

void main() {
  final newProduct = Product.money;

  calculateMoney(Product.money ?? 0);

  productNameChange();

  calculateMoney(Product.money ?? 0);

  // user classımı kullanarak product yapmak istiyorum

  final user1 = User('ahmet', 'aa');
  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  Product.ahmet();

  //api key neydi acaba
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl daha ekledik');
    Product.incrementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;
  Product(this.name);
  Product.ahmet([this.name = 'ahmet']);
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = "VB BANK";

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
