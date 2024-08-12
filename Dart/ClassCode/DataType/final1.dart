void main() {
  const int x = 10;
  // Error: The const variable 'x' must be initialized.
  // Try adding an initializer ('= expression') to the declaration.
  final int y;
  //  Final variable 'y' must be assigned before it can be used.
  print(x);
  y = 20;
  print(y);
}