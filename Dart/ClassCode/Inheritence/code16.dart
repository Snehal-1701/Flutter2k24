class Parent extends Object {
  Parent() : super() {
    print("parent constructor");
  }
}

class Child extends Parent {
  Child() : super() {
    print("In child constructor");
  }
}

void main() {
  Child obj = Child();
}