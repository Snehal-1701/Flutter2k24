mixin class Parent {
  int x = 8;
  int z = 8;
  void fun() {
    print(x);
  }
}

class Child with Parent {
  int x = 3;
  static int y = 1;
  int z = 6;
  Child(int x);
  void fun() {
    gun();
  }

  void gun() {
    z = 4;
    print(x);
    print(y);
  }
}

void main() {
  Parent obj = Child(10);
  print(obj.z);
  obj.fun();
}