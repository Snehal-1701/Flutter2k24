abstract class Parent {
  static int z = 9;
  void fun() {
    print("In fun");
    gun();
  }

  // static void sun();
  void gun();
}

class Child extends Parent {
  void fun() {
    super.fun();
  }

  void gun() {
    print("in gun");
  }

  static void sun() {}
}

void main() {
  Child obj = Child();
}