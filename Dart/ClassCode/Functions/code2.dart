// Functions
// 1) no parameter and no return value
// 2) parameter and no return value
// 3) no parameter and return value
// 4) parameter and return value

// 1) no parameter and no return value

import 'dart:io';

void add() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print("Add : ${a+b}");
  // print("Add : {$a+$b}");          Add : {1+2}
}

void main() {
  add();
}