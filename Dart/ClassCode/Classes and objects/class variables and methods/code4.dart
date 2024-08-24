class Demo {
  static int x = 10;

  int get getX => x;
}

void main() {
  print(Demo.x);

  Demo obj = Demo();
  print(obj.getX);
}