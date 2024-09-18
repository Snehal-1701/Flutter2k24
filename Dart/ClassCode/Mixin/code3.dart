abstract class Demo {
  void fun() {
    print("In fun-Demo");
  }
}

abstract class Demo1 {
  void fun();
}


mixin FunMethod {
  void fun() {
    print("In fun-mixin");
  }
}

class Child extends Demo with FunMethod implements Demo1  {

}

void main() {
  Child obj = Child();
  obj.fun();
}