class Demo {
  int? x;
  String? str;

  Demo(this.x, this.str);

  void disp() {
    print(x);
    print(str);
  }
}

void main() {
  Demo obj1 = Demo(10, "Hello");
  print(identityHashCode(obj1));

  Demo obj2 = Demo(10, "Hello");
  print(identityHashCode(obj2));
}