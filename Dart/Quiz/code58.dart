class Parent {
  int? _x = 10;
  String str = "test";
  static int y = 5;

  Parent(this._x) ;

  void fun() {
    // print(x);
  }
}

class Child extends Parent {
  int? x;
  int? y;

  Child(this.x, this.y, int z) : super(z);

  get getPX {
    return _x;
  }

  void fun() {
    x = 20;
    super.fun();
  }
}

void main() {
  Child obj = new Child(10, 20, 30);
  obj.fun();
  print(obj.getPX);
}