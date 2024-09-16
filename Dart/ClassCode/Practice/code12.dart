class Demo {
  Demo() {
    print("Main constructor");
  }

  Demo.myConst() : this() ;
  // {
  //   print("Another const");
  // }
}

void main() {
  Demo obj = Demo();
}