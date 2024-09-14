// Fibonacci

import 'dart:io';

void fibo(int num) {
  int n1 = 0;
  int n2 = 1;
  int sum = 1;
  for(int i=1; i<=num; i++) {
    stdout.write("$n1 ");
    n1 = n2;
    n2 = sum;
    sum = n1 + n2;
  }
}

int fib(int num) {
  if(num == 0 || num == 1) {
    return num;
  }
  return fib(num-1) + fib(num-2);
}

void main() {
  stdout.write("Enter number : ");
  int num = int.parse(stdin.readLineSync()!);

  fibo(num);

  print("\nRecursive aprroach");
  for(int i=0; i<10; i++) {
    stdout.write("${fib(i)} ");
  }
}