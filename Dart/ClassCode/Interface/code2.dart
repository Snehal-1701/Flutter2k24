class Parent1 {

}

class Parent2 {
  
}

class Child implements Parent1, Parent2 {
  fun() {
    print("In fun");
  }
}

void main() {
  Child obj = Child();
  obj.fun();
}