class Parent {
  int x;
  String str;
  int z = 7;
  Parent(this.x, this.str);

  void getData() {
    print(z);
  }
}

class Child extends Parent {
  int x;
  String str;
  int y = 20;
  Child(this.x, this.str, int z, String data) : super(z, data);

  void getData() {
    print(x);
    print(str);
    fun();
  }

  void fun() {
    print(y);
  }
}

void main() {
  Parent obj = Child(54, "test", 65, "best");
  obj.getData();
}