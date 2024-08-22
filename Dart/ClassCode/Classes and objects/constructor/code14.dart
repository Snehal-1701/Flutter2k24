import 'dart:io';
class Demo {
  final int? data;
  final String? name;

  const Demo(this.data, this.name);
}

void main() {
  print(identityHashCode(const Demo(10, "Hello")));
  print(identityHashCode(const Demo(10, "Hello")));
  int i = 1;
  int sum = 0;
  while(i<=100) {
    sum += i;
    i++;
  }
  print("SUm : $sum");
  var duration = const Duration(seconds:100);
  sleep(duration);
  print(identityHashCode(const Demo(10, "Hello")));
}