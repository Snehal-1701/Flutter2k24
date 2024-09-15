class Test {
  int x = 6;
  Test();
  void printData() {
    print(x);
  }
}

class Test2 {
  int x = 9;
  Test2() {
    print("In test2");
  }
}

class child extends Test implements Test2 {
  int x = 7;
  void printData() {
    print(super.x);
    super.printData();
  }
}

void main() {
  child obj = child();
  obj.printData();
}