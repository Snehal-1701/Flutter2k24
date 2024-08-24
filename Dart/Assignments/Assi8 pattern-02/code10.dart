import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync  ()!);
  int num1 = 1;

  for(int i=1; i<=row; i++) {
    for(int j=1; j<=row; j++) {
      if(i%2==1) {
        stdout.write("$num1 ");
      }else {
        stdout.write("a ");
      }
    }
    num1 += 1;
    print("");
  }
}