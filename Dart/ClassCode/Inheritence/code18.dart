class Parent {
  Parent() : super(){
    print("Parent constructor");
  }
  call() {
    print("In parent call");
  }
}

class Child extends Parent {
  Child() : super(){
    print("In child constructor");
    super();
  }
}

void main() {
  Child obj = Child();
}