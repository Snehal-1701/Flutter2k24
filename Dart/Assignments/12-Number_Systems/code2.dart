// Prime number 

import 'dart:io';

bool isPrime(int num) {
  int count = 0;
  for(int i=1; i<=num; i++) {
    if(num%i == 0) {
      count++;
    }
  }
  if(count == 2) {
    return true;
  }else {
    return false;
  }
}

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  bool ans = isPrime(num);
  if(ans) {
    print("$num is a Prime number");
  }else {
    print("$num is not a Prime number");
  }
}