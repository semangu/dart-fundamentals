// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(List<String> args) {
  final user = User(data: 10);
  final user2 = User(data: 'Sema');
  print(user.data);
  print(user2.data);

  final admin = AdminUser();
  removeUserAll(admin);
}

void removeUserAll<T extends IAdmin>(T data){
  data.removeUser();
}


class User<T> {
  T data;
  User({
    required this.data,
  });
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
  }

}