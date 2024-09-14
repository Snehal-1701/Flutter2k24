// Perfect number 

import 'dart:io';

bool isStrong(int num) {
  int sum = 0;
  int n = num;
  while(n > 0) {
    int temp = n %10;
    int fact = 1;
    for(int i=1; i<=temp; i++) {
      fact *= i;
    }
    sum += fact;
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
  bool ans = isStrong(num);
  if(ans) {
    print("$num is a Strong number");
  }else {
    print("$num is not a Strong number");
  }
}