class Parent {
  Parent() : super(){
    print("Parent constructor");
  }
}

class Child extends Parent {
  Child() : super(){
    print("In child constructor");
  }
}

void main() {
  Child obj = Child();
}