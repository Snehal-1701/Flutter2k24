// Binary number 
import 'dart:io';

void binaryNo(int n) {
    if(n > 1)
      binaryNo(n~/2);
    
    stdout.write(n%2);
}
void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n = 1;

  for(int i=1; i<=row; i++) {
    for(int j=1; j<=row; j++) {
      binaryNo(n);
      stdout.write(" ");
      n++;
    }
    print("");
  }
}