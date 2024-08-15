// Function with parameters and return value

import 'dart:io';

void main() {
  int num1 = 10;
  int num2 = 20;
  int retVal = add(num1, num2);
  print("Add : $retVal");
}

int add(int num1, int num2) {
  return num1+num2;
}
