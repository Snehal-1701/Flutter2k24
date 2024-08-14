// totake input from user readLineSync() method of stdin class is used

import 'dart:io';

void main() {
  String name;
  print("Enter your name : ");
  name = stdin.readLineSync()!;
  print("Name : $name");

  String? lastName;
  print("Enter your last name : ");
  lastName = stdin.readLineSync();
  print("Name : $lastName");
}