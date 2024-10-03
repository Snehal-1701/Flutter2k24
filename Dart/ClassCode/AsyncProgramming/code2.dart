void main() {
  print("Statement 1");
  fun();
  print("Statememt 2");
}

void fun() {
  print("In fun");
  Future.delayed(
    Duration(
      seconds: 5,
    ),
    () => print("Fun..."),
  );
  print("End Fun");
}