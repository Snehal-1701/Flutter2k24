import 'dart:io';
void main() {
  int jerNo;
  // int? jerNo;  ---allowed
  String? pName;

  stdout.write("Enter players jersy no. ans name : ");
  jerNo = int.parse(stdin.readLineSync()!);
  pName = stdin.readLineSync();

  print(jerNo.runtimeType);
  print(pName.runtimeType);
}