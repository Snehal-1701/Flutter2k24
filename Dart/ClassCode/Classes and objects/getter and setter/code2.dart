import "code1.dart";

void main() {
  Demo obj = Demo();
  print(obj.x);
  print(obj.getY);

  obj.setY = 20;
  print(obj.getY);
  callMain();
}