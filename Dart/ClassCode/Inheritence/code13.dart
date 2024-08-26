class Demo {
  int x = 10;
  Demo() {
    print("Demo constructor");
  }
}

class DemoChild extends Demo {
  static int y = 20;
  DemoChild() {
    print("DemoChild constructor");
    print(x);
    print(y);
  }
}

void main() {
  DemoChild obj1 = DemoChild();
}