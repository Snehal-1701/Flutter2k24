import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n = 0;
  for(int i=1; i<=row; i++) {
    int num = 1;
    for(int j=1; j<=n; j++) {
      stdout.write("  ");
      num++;
    }
    
    for(int j=1; j<=row-n; j++) {
      stdout.write("$num ");
      num++;
    }
    print("");
    n++;
  }
}