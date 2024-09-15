import 'dart:io';

void main() {
  stdout.write("Enter name : ");
  String name = stdin.readLineSync()!;
  print(name);
  
}