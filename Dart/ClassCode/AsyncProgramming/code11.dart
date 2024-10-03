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

void main() async{
  print("Start main");
  int x = await fun();
  print(x);
  print("End main");
}