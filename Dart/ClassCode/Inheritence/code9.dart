class Demo {
  int x = 10;
  static int y = 20;
  
  void dispData() {
    print(x);
    print(y);
  }
}

class DemoChild extends Demo {
  
}

void main() {
  DemoChild obj = DemoChild();
  print(obj.x);
  obj.dispData();

}