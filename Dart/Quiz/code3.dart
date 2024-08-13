void main() {
  int x = 7;
  int y = 6;
  if((++x >= --x) || (y++ < --x)) {
    print("In if block");
  }
  print(x);
  print(y);
  print("Out of if");
}