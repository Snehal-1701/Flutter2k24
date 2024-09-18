abstract class Demo {
  void fun();
}

abstract class Memo {
  void fun();
}


mixin class FunMethod {
  void fun() {
    print("In fun-mixin");
  }
}

// mixin fun on FunMethod{

// }

class Child extends  FunMethod {

}


class Child2 with  FunMethod {

}

void main() {
  Child obj = Child();
  obj.fun();
}

Function objFUn() {
  return objFUn;
}