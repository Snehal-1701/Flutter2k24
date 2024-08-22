import 'dart:io';
void main() {
  stdout.write("Enter day : ");
  int day = int.parse(stdin.readLineSync()!);
  while(day>=0) {
    if(day != 0) {
      print("$day days remaining");
    }else {
      print("$day days assignment is Overdue");
    }
    day--;
  }
}