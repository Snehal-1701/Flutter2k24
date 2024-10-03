Future<int> run() {
  return Future.delayed(
    Duration(
      seconds: 5,
    ),
    () => 20,
  );
}

Future<int> fun() {
  return Future.delayed(
    Duration(
      seconds: 5,
    ),
    () => run(),
  );
}

void main() {
  print("Start main");
  Future<int> x = fun();
  print(x);
  print("End main");
}