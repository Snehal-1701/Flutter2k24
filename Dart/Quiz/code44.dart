class Test {
  final int x;
  final int y;
  const Test(this.x, this.y) ;
}

void main() {
  const Test obj = Test(10,20);
  const Test obj1 = Test(10,20);
  print(obj == obj1);
}