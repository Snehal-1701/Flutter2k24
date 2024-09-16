class Test {
  int x;
  Test(this.x);

  void fun() {
    print(x);
    print(this.x);
  }
}

class Test2 extends Test {
  int x ;
  Test2(this.x, int y) : super(y) ;


  void fun() {
    print(x);
    print(this.x);
    super.fun();
    print(super.x);
  }
}

void main() {
  Test2 obj = Test2(10,20);
  obj.fun();
}