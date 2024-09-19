// Harshad number 
import 'dart:io';

int harshadNo(int n) {
   while (true) {
    int n1 = n;
    int sum = 0;
    while (n1 > 0) {
      sum += n1 % 10;
      n1 ~/= 10;
    }
    if (n % sum == 0) {
      return n;
    }
    n++;
  }
}
void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n = 1;

  for(int i=1; i<=row; i++) {
    for(int j=1; j<=row; j++) {
      int ans = harshadNo(n);
      stdout.write("$ans ");
      n = ans + 1;
    }
    print("");
  }
}