class Demo {
  Demo() {
    print("Demo constructor");
  }
}

class DemoChild extends Demo {
  DemoChild() {
    print("DemoChild constructor");
  }
}

void main() {
  DemoChild obj1 = DemoChild();

  Demo obj2 = DemoChild();

  Demo obj3 = Demo();
}