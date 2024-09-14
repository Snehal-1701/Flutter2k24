// Duck number 

import 'dart:io';

bool isDuck(int num) {
  while(num > 0) {
    int temp = num % 10;
    if(temp == 0) {
      return true;
    }
    num ~/= 10;
  }
  return false;
}

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  bool ans = isDuck(num);
  if(ans) {
    print("$num is a Perfect number");
    print("$num is a Duck number");
  }else {
    print("$num is not a Duck number");
  }
}