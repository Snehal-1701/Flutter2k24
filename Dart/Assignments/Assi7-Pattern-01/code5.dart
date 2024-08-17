import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);

  for(int i=row; i>=1; i--) {
    for(int j=1; j<=row; j++) {
      stdout.write("$i ");
    }
    print("");
  }
}