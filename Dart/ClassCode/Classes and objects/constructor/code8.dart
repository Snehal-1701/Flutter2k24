// constant constructor
class Demo {
  int? data;
  String? name;
  Demo (this.data, this.name) {
    print("In constructor");
  }

  void disp() {
    print("In display");
  }
}

void main() {
  new Demo(10, "hello");
}