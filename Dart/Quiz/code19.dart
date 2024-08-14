void main() {
  int a = 0, b=1, ans = 10, count;
  do {
    ans = a + b;
    count = a++ + ++b;
  }while(false);
  print(ans);
  print(count);
  print(a);
  print(b);
}