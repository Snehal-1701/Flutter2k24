// Arrow-Shaped Pattern

import 'dart:io';
void main() {
  int row = 5;
  for(int i=0; i<row; i++) {
    for(int j=0;j<=i; j++) {
      stdout.write("* ");
    }
    print("");
  }
  for(int i=1; i<row; i++) {
    for(int j=1;j<row+1-i; j++) {
      stdout.write("* ");
    }
    print("");
  }
}
