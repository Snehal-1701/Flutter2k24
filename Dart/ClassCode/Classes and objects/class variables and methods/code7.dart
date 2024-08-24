class Demo {
  int x = 10;
  static int y = 20;

  int get getY => y;

  set setY(int data) => Demo.y = data;
}

void main() {
  print(Demo.y);
  // print(Demo.x);
  Demo obj = Demo();
  print(obj.x);
  print(obj.getY);

  obj.setY = 20;
  print(obj.getY);

}