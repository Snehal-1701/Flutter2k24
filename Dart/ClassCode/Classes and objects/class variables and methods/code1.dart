class Demo {
  int x = 10;

  Demo() {
    print("Demo  constructor");
  }
}

void main() {
  Demo obj = Demo();
  print(obj.x);Demo obj1 = Demo();
  print(obj1.x);
}