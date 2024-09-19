// Rectangular numbers  = n * (n+1)

import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n = 0;

  for(int i=1; i<=row; i++) {
    for(int j=1; j<=row; j++) {
      stdout.write("${n*(n+1)} ");
      n++;
    }
    print("");
  }
}