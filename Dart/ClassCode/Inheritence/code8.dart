class Demo {
  int x = 10;
  static int y = 20;
  int get getY => y;
}

class DemoChild extends Demo {
  
}

void main() {
  DemoChild obj = DemoChild();
  print(obj.x);
  print(obj.getY);

}