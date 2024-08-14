import 'dart:io';

void main() {
  stdout.write("Enter company name : ");
  String? compName = stdin.readLineSync();

  stdout.write("Enter employee name : ");
  String? empName = stdin.readLineSync();
  
  stdout.write("Enter employee ID : ");
  int empId = int.parse(stdin.readLineSync()!);

  stdout.write("Enter employee salary : ");
  double empSal = double.parse(stdin.readLineSync()!);

  stdout.write("Comapany Name : $compName\nEmployee Name : $empName\nEmployee Id : $empId\nEmployee salary : $empSal");

}
