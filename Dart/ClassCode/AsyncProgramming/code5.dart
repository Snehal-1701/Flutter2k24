void main() {
  print("Statement 1");
  Future<String> retVal = Future(() => "Statement 2");
  print(retVal);
  print("Statement 4");
}