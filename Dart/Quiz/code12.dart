void main() {
  int x = 10;
  for(;;) {
    if(x<8)
      break;
    print(x);
    x = x - 1;
  }
}