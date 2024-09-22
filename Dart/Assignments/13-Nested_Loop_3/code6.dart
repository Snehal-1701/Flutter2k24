// Abundant number 
import 'dart:io';

int abundantNo(int n) {
   while (true) {
    int n1 = n;
    int sum = 0;
    for(int i=1; i<n1; i++) {
      if(n1 % i == 0) {
        sum += i;
      }
    }
    if (sum > n) {
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
      int ans = abundantNo(n);
      stdout.write("$ans ");
      n = ans + 1;
    }
    print("");
  }
}