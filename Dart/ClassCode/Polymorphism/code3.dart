class Demo {

}

class DemoChild extends Demo {

}

class Parent {
  Demo marry() {
    return Demo();
  }
}

class Child extends Parent {

  @override 
  DemoChild marry() {
    return DemoChild();
  }
}
void main() {
  Child obj = Child();
  obj.marry();
}