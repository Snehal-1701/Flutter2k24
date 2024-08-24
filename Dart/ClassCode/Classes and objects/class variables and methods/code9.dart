class Demo {
  static int x = 10;

  int get getX => x;

  set setX(int data) => x = data;

  Demo() {
    print("Demo  constructor");
  }
}

void main() {
  Demo obj1 = Demo();
  Demo obj2 = Demo();
  
  print(obj1.getX);
  print(obj2.getX);
  
  obj2.setX = 50;
  print(obj1.getX);
  print(obj2.getX);
}