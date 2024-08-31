class Parent {
  int x;
  int y = 70;
  static int z = 10;
  Parent(this.x) ;

  void printData() {
    print(x);
  }
}

class Parent2 extends Parent {
  Parent2(int y) : super(y);
}

class Child extends Parent2 implements Parent {
  int x;
  int y;

  Child(this.x, this.y):super(y);

  void printData() {
    print(super.y);
  }
}

void main() {
  Child obj = Child(10,20);
  obj.printData();
}