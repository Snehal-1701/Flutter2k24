// Function with no parameters and return value

// Provided exact return type
import 'dart:io';

void main() {
  int retVal = add();
  print("Return value : $retVal");
  num retVal2 = add();
  print("Return value : $retVal2");
  
  // covariant or parent 
  num retVal1 = add1();
  print("Return value : $retVal1");
  
}

int add() {
  int a = 10;
  int b = 20;
  return a + b;
}

num add1() {
  return 10+20;
}
