mixin Parent {
  int x = 10;
  static run() {
    print("Static ");
    return 7;
  }
}

class Child with Parent {
  Child() {
    print("Child constructor");
    print(x);
  }
}

void main() {
  Child obj = Child();
  Parent.run();
}