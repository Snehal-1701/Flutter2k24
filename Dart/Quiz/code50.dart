class Parent {
  Parent() {
    print("In parent");
    this();
  }
  call() {
    print("In parent call");
  }
}

class Test extends Parent {
  call() {
    print("In child call");
  }
  Test() {
    print("In child const");
  }
}

void main() {
  Test obj = Test();
}