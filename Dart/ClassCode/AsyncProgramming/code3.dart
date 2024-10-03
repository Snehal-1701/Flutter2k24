void main() {
  print("Statement 1");
  Future.delayed(
    Duration(
      seconds: 5,
    ),
    () => print("Statement 2"),
  );
  print("Statement 3");
}