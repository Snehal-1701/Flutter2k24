void main() {
  print("Statement 1");
  Future<String> retVal = Future(() => "Statement 2");
  print(retVal);
  retVal.then((data) => print(data));
  print("Statement 4");
}