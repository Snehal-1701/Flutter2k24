void main() {
  print("Statement 1");
  Future<String> retVal = Future.delayed(Duration(seconds:5),() => "Statement 2");
  Future.delayed(Duration(seconds:5),() => print(retVal));
  print("Statement 4");
}