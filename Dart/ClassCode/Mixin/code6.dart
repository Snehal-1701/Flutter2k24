class Parent {
  void run() {
    print("In fun");
  }
}

mixin Demo {
  void fun() {
    print("In demo");
  }
  
}

class Child extends Parent with Demo {

}

void main() {
  Demo obj = Child();
  obj.fun();
  // obj.run();

  print(true | false);
}