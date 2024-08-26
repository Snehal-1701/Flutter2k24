import 'dart:io';

class Parent {
  int x; 
  int y;
  int z;

  Parent({required this.x, required this.y, this.z = 99});
}

class Child extends Parent {
  int x;
  int y;

  Child(this.x, this.y) : super(x:x, y:y, z:30) {
    stdout.write(super.x);
    stdout.write(" ");
    stdout.write(super.y);
    stdout.write(" ");
    stdout.write(super.z);
  }
}

void main() {
  Child obj = Child(10, 20);
}