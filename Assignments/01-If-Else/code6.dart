void main() {
  var x = 6;
  if(x <= 5) {
    if(x == 1) {
      print("One");
    } else if(x == 2) {
      print("Two");
    } else if(x == 3) {
      print("Three");
    } else if(x == 4) {
      print("Four");
    } else {
      print("Five");
    }
  }else {
    print("$x greater than 5.");
  }
}