import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n = 1;
  int n2 = row;

  for(int i=0; i<row; i++) {
    int num = i;

    for(int i=1; i<n2; i++) {
      stdout.write("  ");
    }
    for(int j=1; j<=n; j++) {
      stdout.write("$num ");
      if(j > n~/2) {
        num++;
      }else {
        num--;
      }
    }
    print("");
    n2--;
    n += 2;
  }
}