import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n1 = row;
  int n2 = row + 1;

  for(int i=1; i<=row; i++) {
    for(int j=1; j<=row; j++) {
      if(j%2 == 1) {
        stdout.write("$n1 ");
        n1 += row*2;
      }else {
        stdout.write("$n2 ");
        n2 += row*2;
      }
    }
    n1 = row-i;
    n2 = row+1+i;
    print("");
  }
}