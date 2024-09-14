// Deficient number 

import 'dart:io';

bool isDeficient(int num) {
  int sum = 0;
  for(int i=1; i<num; i++) {
    if(num%i == 0) {
      sum += i;
    }
  }
  if(sum < num) {
    return true;
  }else {
    return false;
  }
}

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  bool ans = isDeficient(num);
  if(ans) {
    print("$num is a Deficient number");
  }else {
    print("$num is not a Deficient number");
  }
}