void main() {
  int x = 10;
  int y = 20;

  var fun = (int a) {
    print("a : $a");
    print("x : $x");
    print("y : $y");
  };

  fun(30);
}