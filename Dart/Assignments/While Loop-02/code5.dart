import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);
  int num1 = num;
  int fact = 1;
  while(num>=1) {
    fact *= num;
    num--;
  }
  print("Factorial of $num1 : $fact");
}