// class Demo {
//   Demo() {
//     super();
//     print("In demo constructor");
//   }
// }

class Demo {
  Demo() {
    print("Demo constructor");
  }
  call() {
    print("In demo call");
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
  obj();
}