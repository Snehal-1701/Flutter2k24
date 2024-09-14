// Perfect number 

import 'dart:io';

bool isPerfect(int num) {
  int sum = 0;
  for(int i=1; i<=num~/2; i++) {
    if(num%i == 0) {
      sum += i;
    }
  }
  if(sum == num) {
    return true;
  }else {
    return false;
  }
}

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  bool ans = isPerfect(num);
  if(ans) {
    print("$num is a Perfect number");
  }else {
    print("$num is not a Perfect number");
  }
}