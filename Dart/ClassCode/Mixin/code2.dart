mixin Parent1 {
  int x = 10;

  void fun() {
    print("In fun-Parent1");
  }
}

mixin Parent2 {
  int x = 20;

  void fun() {
    print("In fun-Parent2");
  }
}

class Child with Parent2, Parent1 {

}

void main() {
  Child obj = Child();
  print(obj.x);
  obj.fun();
}