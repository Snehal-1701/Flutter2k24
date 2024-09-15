var add = (int x, int y) {
  print("In anonymous function");
  return x+y;
};

int fun(int x, int y) {
  print("In normal function");
  return x+y;
}
var gun = () {};
var run = () {};

void main() {
  print(fun(10,20));
  print(add(10,20));

  print("Hashcode : ${fun.hashCode}");
  print("Identity HashCode : ${identityHashCode(fun)}");

  print("Hashcode : ${add.hashCode}");
  print("Identity HashCode : ${identityHashCode(add)}");

  print("Hashcode : ${gun.hashCode}");
  print("Identity HashCode : ${identityHashCode(gun)}");
}