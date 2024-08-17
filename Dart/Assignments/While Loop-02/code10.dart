import 'dart:io';
void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int rev = 0;
  while(temp > 0) {
    int digit = temp%10;
    rev = rev*10 + digit;
    temp ~/= 10;
  }
  if(num == rev) {
    print("$num is a palindrome number");
  }else {
    print("$num is not a palindrome number");
  }
}