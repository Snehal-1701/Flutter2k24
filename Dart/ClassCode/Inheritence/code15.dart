
class Demo {
  Demo() {
    print("Demo constructor");
  }
  int call(int x, int y) {
    print("In demo call");
    return x + y;
  }
}

class Child extends Demo {
  Child() {
    // super();
    print("Child constructor");
  }
}
void main() {
  Child obj = Child();
  print(obj(10,20));
}