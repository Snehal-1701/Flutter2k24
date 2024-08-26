class Parent {
  Parent();
}

class Child extends Parent {
  Child() ;
  // {
  //   this();
  // }
  call() {
    print("in call method");
  }
}

void main() {
  Child obj = Child();
  obj();
}