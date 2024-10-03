Future<int> fun() {
  return Future.delayed(
    Duration(
      seconds: 3,
    ),
    () => 10,
  );
}

void main() async{
  print("Start main");
  int x = await fun();
  print(x);
  print("End main");
}