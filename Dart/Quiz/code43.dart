class Demo {
  int? age;
  String? name;

  void info() {
    print("$age");
    print("$name");
  }
}

void main() {
  Demo obj = Demo();
  obj.info();
}