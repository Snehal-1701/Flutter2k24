import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int num = row*(row+1)~/2;

  for(int i=1; i<=row; i++) {

    for(int j=1; j<=row-i; j++) {
      stdout.write("  ");
    }
    
    for(int j=1; j<=i; j++) {
      stdout.write("$num ");
      num--;
    }
    print("");
  }
}