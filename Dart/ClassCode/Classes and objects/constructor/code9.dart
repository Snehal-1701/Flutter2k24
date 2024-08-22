class Demo {
  int? x;
  int? y;
  
  Demo.named() {
    print("In named constructor");
  }

  void disp() {
    print(x);
    print(y);
  }
}

void main() {
  Demo obj = Demo.named();
  obj.disp();
}