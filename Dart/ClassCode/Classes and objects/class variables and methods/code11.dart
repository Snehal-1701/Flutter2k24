class Demo {
  static int x = 10;
  static void fun() {
    print("In static method");
    print(x);
  }
  int get getX => x;

  dynamic retFun() {
    return fun;
  }
}

void main() {
  Demo obj = Demo();
  print(obj.getX);
  var ret = obj.retFun();
  ret();
}
