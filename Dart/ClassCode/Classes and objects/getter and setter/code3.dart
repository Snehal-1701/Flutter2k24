import 'dart:io';

class Demo {
  int? x;
  int? _y;
  
  int? get getY {
    print("In get");
    return _y;
  }

  set setY(int y) {
    _y = y;
    print("In set");
  }
}