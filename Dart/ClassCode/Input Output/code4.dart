// output 
//write()
//writeln()
// writeAll()
// addStream()
// print();

import 'dart:io';

void main() {
  stdout.write("Hello");
  stdout.writeln("Hello Dart");
  List players = ['Shubman', 'Shreyas', 'MSD', 'Virat','Chahal'];
  stdout.writeAll(players, "\n");
  print("");
  stdout.writeCharCode(65);
  print("");
}