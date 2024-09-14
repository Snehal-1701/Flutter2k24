import 'dart:io';

int fib(int n) {
  if (n==0 || n == 1) {
    return n;
  }
  return fib(n-1) + fib(n-2);
}

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int num = 1;

  for(int i=1; i<=row; i++) {

    for(int j=1; j<=i; j++) {
      stdout.write("${fib(num)} ");
      num++;
    }
    print("");
  }
}


// void main() {
//   int a = 1;
//   int b = 1;
//   int ans = 2;
//   // for(int i=1; i<=10; i++) {
//   //   print(a);
//   //   a = b;
//   //   b = ans;
//   //   ans = a+b;
//   // }
//   print(fib(1));
//   print(fib(2));
//   print(fib(3));
//   print(fib(10));

// }