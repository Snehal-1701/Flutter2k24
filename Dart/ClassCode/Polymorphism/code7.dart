abstract class Parent {
  void fun() {
    print("In fun-parnt");
  }
}

class Child extends Parent {
  void run() {

  }
}

void main() {
  Parent obj = Child();
  obj.fun();
  // obj.run();
}