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
    print("In fun-parent1");
  }
  void run() {
    print("In run-parent1");
  }
}

void main() {
  Child obj = Child();
  obj.fun();
  obj.run();
}