void main() {
  int x = 10;
  int y = 20;
  print(++x);
  print(x++);
  print(y++);
  print(++y);

  int ans = ++x + x++ + ++y + y++;
  print(ans);
}