import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);

  for(int i=0; i<row; i++) {
    for(int j=0; j<row; j++) {
      stdout.write("*# ");
    }
    print("");
  }
}