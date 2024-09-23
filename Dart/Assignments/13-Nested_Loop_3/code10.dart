// happy numbers 

import 'dart:io';

int happyNo(int n) {
  
  var set1 = <int>{};  

  while (true) {
    if (n == 1) {
      return 1;  
    }
    if (set1.contains(n)) {
      return 0;  
    }
    
    set1.add(n);  
    n = sumOfSquares(n);  
  }
}

int sumOfSquares(int n) {
  int sum = 0;
  while(n != 0) {
    int digit = n % 10;
    sum += digit * digit;
    n ~/= 10;
  }
  return sum;
}

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);

  int num = 1;
  for(int i=1; i<= row; i++) {
    for(int j=1; j<= row; j++) {
      while (happyNo(num) != 1) {
        num++;  
      }
      stdout.write("$num ");
      num++;
    }
    print("");
  }
}