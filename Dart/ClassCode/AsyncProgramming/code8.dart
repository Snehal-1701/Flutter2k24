Future<int> fun() {
  return Future.delayed(
    Duration(
      seconds: 3,
    ),
    () => 10,
  );
}

void main() {
  print("Start main");
  Future<int> x = fun();
  print(x);
  print("End main");
}