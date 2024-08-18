class Test {
  int? z;
  void printData() {
    print(z);
    print("In printData");
  }
}

void main() {
  print("Hii");
  Test obj = Test();
  obj.printData();
}