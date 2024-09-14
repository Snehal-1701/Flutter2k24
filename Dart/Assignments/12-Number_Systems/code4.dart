// Armstrong number 

import 'dart:io';

bool isArmstrong(int num) {
  int count = 0;
  int sum = 0;
  int n = num;

  while(n > 0) {
    count++;
    n ~/= 10;
  }

  n = num;
  
  while(n > 0) {
    int temp = n%10;
    int mult = temp;

    for(int i=1; i<count; i++) {
      mult *= temp;
    }
    sum += mult;
    n ~/= 10;
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
  bool ans = isArmstrong(num);
  if(ans) {
    print("$num is a Armstrong number");
  }else {
    print("$num is not a Armstrong number");
  }
}

