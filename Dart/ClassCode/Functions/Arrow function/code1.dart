// arrow function

import 'dart:io';

int add(int a, int b) => a+b;
int sub(int a, int b) => a-b;
int mult(int a, int b) => a*b;
num div(int a, int b) => a/b;

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  print(add(a,b));
  print(sub(a,b));
  print(mult(a,b));
  print(div(a,b));
}