abstract class Parent1 {
  void fun() {
    print("In fun-parent1");
  }
}

abstract class Parent2 {
  void run() {
    print("In run-parent1");
  }
}

class Child implements Parent1, Parent2 {
  void fun() {
    print("In fun-child");
  }
  void run() {
    print("In run-child");
  }
}

void main() {
  Child obj = Child();
  obj.fun();
  obj.run();

  Parent1 obj1 = Child();
  obj1.fun();
  // obj1.run();
}