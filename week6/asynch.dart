
Future<void> main() async {
  print('a');

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(15, 3);
  bankMoneys.listen((event) {
    print(event);
  });


  // await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('işlem bitti $element');
  // });

  // 2 sn bekle sonra devam et
  //await Future.delayed(Duration(seconds: 2));
  print('ab');

    print('hello');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello2');
  });
    print('hello3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello4');
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}

// Dart single thread

//bir servise istek attık cevap sonradan gelecek
// zaman alacak işlemler için -- async tercih edilir

// ana thread işlemleri bittikten sonra future requestler başlar -- event loop