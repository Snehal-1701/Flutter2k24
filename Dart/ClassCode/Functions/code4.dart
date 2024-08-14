// Function with no parameters and return value

// Provided exact return type
import 'dart:io';

void main() {
  int retVal = add();
  print("Return value : $retVal");
}

int add() {
  int a = 10;
  int b = 20;
  return a + b;
}
