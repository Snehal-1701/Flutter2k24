class Demo {
  static int x = 10;

  int get getX => x;

  set setX(int data) => x = data;
}

void main() {
  print(Demo.x);

  Demo obj = Demo();
  print(obj.getX);

  obj.setX = 20;
  print(obj.getX);

}