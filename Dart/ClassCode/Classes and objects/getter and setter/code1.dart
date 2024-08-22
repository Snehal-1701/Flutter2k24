class Demo {
  int? x;
  int? _y;
  
  int? get getY {
    return _y;
  }

  set setY(int y) {
    _y = y;
  }
}

void main() {
  Demo obj = Demo();
  print(obj.x);
  print(obj._y);
}

void callMain() {
  main();
}