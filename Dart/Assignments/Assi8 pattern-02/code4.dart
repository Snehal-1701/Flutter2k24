import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync  ()!);

  int num = 0;

  for(int i=1; i<=row; i++) {
    for(int j=1; j<= row; j++) {
      if(row%2 == 1) {
        stdout.write("$num ");
        num = num == 0 ? 1 : 0;
      }else {
        stdout.write("$num ");
        if(j!=row) {
          num = num == 0 ? 1 : 0;
        }
      }
    }
    print("");
  }
}