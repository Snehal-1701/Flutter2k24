class Test {
  int? x;
  int? y;
  int z;
  double d;

  Test(int x, int y, int z, double d):this.namedConst(x,y,z,d);

  Test.namedConst(int x, int y, int z, double d):this.namedConst2(10,20,30,40);

  Test.namedConst2(this.x, this.y, this.z, this.d);
}

void main() {
  Test obj = Test(30,1,2,3);
  print(obj.x);
  print(obj.y);
  print(obj.z);
  print(obj.d);
}