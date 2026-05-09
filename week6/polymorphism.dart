void main(List<String> args) {
  IUser user1 = Turk();

  user1.sayName();
  user1 = English();
  user1.sayName();

}
  
  abstract class IUser {
    final String name;

    IUser(this.name);
    void sayName();
  }

  class Turk implements IUser {
  @override
  // TODO: implement name
  String get name => 'Sema';
  
  @override
  void sayName() {
    print('merhaba $name');
  }
}
  class English implements IUser {
  @override
  // TODO: implement name
  String get name => 'Adam';
  
  @override
  void sayName() {
    print('Hello $name');
  }
}
  class German implements IUser {
  @override
  // TODO: implement name
  String get name => 'Nico';
  
  @override
  void sayName() {
    print('Hallo $name');
  }
}