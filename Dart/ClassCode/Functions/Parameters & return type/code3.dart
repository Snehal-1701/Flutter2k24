// Function with parameters and no return type

import 'dart:io';
void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  add(a,b);
}

void add(int a, int b) {
  print("Addition : ${a+b}");
}
