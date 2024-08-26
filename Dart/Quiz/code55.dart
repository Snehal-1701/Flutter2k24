class Test {
  int x = 10;
  int y = 30;
  Test(this.y, [this.x = 8]);
}

class Test2 extends Test {
  Test2(int x, int y) : super(y , x);

  void fun() {
    this.x = 8;
    // super.x = 8;
  }
}

void main() {
  Test2 obj = Test2(10, 40);
  print(obj.x);
  obj.fun();
  print(obj.x);

}