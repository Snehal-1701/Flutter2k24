var add = (int a, int b) {
  print(a+b);
  return a+b;
};

void main() {
  print(add(10,20));
  print(add);
  print(add.runtimeType);
}