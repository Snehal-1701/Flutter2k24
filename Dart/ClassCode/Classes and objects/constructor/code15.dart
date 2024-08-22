class Demo {
  int? x;
  int? y;

  Demo() {
    print("In no-arg constructor");
  }

  Demo.para(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

void main(){
  Demo obj = Demo.para(10,20);

}