class Demo {
  static int x = 10;

  static void disp(){
    print(x);
  }

  dynamic dispData(){
    return disp;
  }
}

class Child extends Demo {

}

void main() {
  Child obj = Child();
  var disp = obj.dispData();
  disp();
}