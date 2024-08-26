class Test {
  int _x = 20;
}

class Test2 extends Test {
  static int y = 20;

  void change() {
    y = 30;
    _x = 10;
  }
}

void main() {
  Test2 obj = Test2();
  obj.change();
  print(obj._x);
  print(Test2.y);
}