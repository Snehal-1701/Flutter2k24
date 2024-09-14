// Palindrome number 

import 'dart:io';

bool isPalindrome(int num) {
  int rev = 0;
  int n = num;
  while(n > 0) {
    int temp = n %10;
    rev = rev * 10 + temp;
    n ~/= 10;
  }
  if(rev == num) {
    return true;
  }else {
    return false;
  }
}

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  bool ans = isPalindrome(num);
  if(ans) {
    print("$num is a Palindrome number");
  }else {
    print("$num is not a Palindrome number");
  }
}