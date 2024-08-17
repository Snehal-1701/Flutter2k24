class Demo {
  int? x;
  String? name;
  void info() {
    print("$x");
    print("$name");
  }
}

void main() {
  Demo obj = new Demo();
  obj.info();
}