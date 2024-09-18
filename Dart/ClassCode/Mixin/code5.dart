abstract class Demo {
  void fun();
}

abstract class Memo {
  void fun();
}

mixin FunMethod on Demo {
  void fun() {
    print("In fun-method");
  }
}

class Child extends Demo with FunMethod implements Memo {
  
}