// void main() {
//   int x = 10;

// }

class Parent {
  int x = 10;
  Parent(this.x) {
    print("Parent");
    // this.x = 90;
    print(x);
  }
}

class Child extends Parent {
  int x = 20;
  Child() : super(6) {
    print("Child");
    print(x);
    print(super.x);
  }

}
void main() {
  Child obj = Child();

}