// Harshad/Niven number 

import 'dart:io';

bool isHarshad(int num) {
  int sum = 0;
  int n = num;
  while(n > 0) {
    int temp = n %10;
    sum += temp;
    n ~/= 10;
  }
  if(num % sum == 0) {
    return true;
  }else {
    return false;
  }
}

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  bool ans = isHarshad(num);
  if(ans) {
    print("$num is a Harshad number");
  }else {
    print("$num is not a Harshad number");
  }
}