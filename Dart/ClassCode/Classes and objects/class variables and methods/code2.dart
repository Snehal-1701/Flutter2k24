class Demo {
  int x = 10;

  Demo() {
    print("Demo  constructor");
  }
}

void main() {
  Demo obj1 = Demo();
  print(obj1.x);
  Demo obj2 = Demo();
  print(obj2.x);
  
  obj2.x = 50;
  print(obj1.x);
  print(obj2.x);
}