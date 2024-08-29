class Test {
  static void gun() {

  }
}

class Test2 extends Test {
  @override
  void gun() {
    // super.gun();
  }
}

void main() {
  Test2 obj = Test2();
  // obj.fun();
}
