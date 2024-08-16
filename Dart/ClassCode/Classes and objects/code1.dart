// Classes and objects

class Demo {
  // properties
  int x = 10;
  String str = "Snehal";
  double height = 5.2;

  // methods
  void info() {
    print(this.x);
    print(str);
    print(height);
  }
}

void main() {
  Demo obj = Demo();
  obj.info();
}