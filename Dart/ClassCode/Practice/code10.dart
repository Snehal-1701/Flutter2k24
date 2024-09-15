class _Demo {
  int _x = 90;
  _Demo() {
    print("In _Demo");
  }

  void _privateMethod() {
    print("Private method");
  }
}

void main() {
  _Demo obj = _Demo();
  print(obj._x);
  obj._privateMethod();
}