class Test {
  Test() {
    print("This is main constructor");
  }

  Test.myconst():this();
}

void main() {
  Test obj = Test.myconst();
}