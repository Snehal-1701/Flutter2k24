
class Demo {
  int? x;
  int? _y;
  
  int? get getY => _y;

  set setY(int y) => _y = y;

  void _disp() {
    print("Is is a private method");
  }
}