import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  
  for(int i=1; i<=row; i++) {
    int n1 = i;
    for(int j=1; j<=row; j++) {
      if(n1 > row) {
        n1 = 1;
      }
      stdout.write("$n1 ");
      n1++;
    }
    print("");
  }
}