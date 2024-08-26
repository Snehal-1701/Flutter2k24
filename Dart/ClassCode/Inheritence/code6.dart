class Demo {
  int x = 10;
  static int y = 20;
}

class DemoChild extends Demo {

}

void main() {
  DemoChild obj = DemoChild();
  print(obj.x);
  // print(obj.y);

  Demo obj1 = DemoChild();
  print(obj.x);
  print(obj.y);
}