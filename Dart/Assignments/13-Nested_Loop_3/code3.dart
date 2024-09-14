import 'dart:io';

void main() {
  stdout.write("Enter no. of rows : ");
  int row = int.parse(stdin.readLineSync()!);
  int n1 = 10;
  
  for(int i=1; i<=row; i++) {
    for(int j=1; j<=row; j++) {
  
      stdout.write("$n1 ");
      if(n1 < 100) {
        n1 += 10;
      }else {
        n1++;
      }
      
    }
    print("");
  }
}