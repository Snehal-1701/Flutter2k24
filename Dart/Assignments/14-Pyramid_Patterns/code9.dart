import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n = row + row - 1;
  int n2 = 1;
  int num = 1;

  for(int i=1; i<=row; i++) {
    
    for(int i=1; i<n2; i++) {
      stdout.write("  ");
    }
    for(int j=1; j<=n; j++) {
      stdout.write("$num ");
      num++;
    }
    print("");
    n2++;
    n -= 2;
  }
}