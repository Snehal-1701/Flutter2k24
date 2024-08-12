void main() {
  int num = 15;
  if(num%3 == 0 && num%5 == 0) {
    print("$num is divisible by both 3 and 5");
  }else if(num%3 == 0) {
    print("$num is divisible 3");
  } else if(num%5 == 0) {
    print("$num is divisible 5");
  } else {
    print("$num  is not divisible by 3 and 5");
  }
}