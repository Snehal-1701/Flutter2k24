void main() {
  int a = 10;
  double b = 10;
  num c = 10.9;
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);
  c = 19;
  print(c.runtimeType);
  String a1 = "kanha";
  String a2 = "kanha";
  print(a2.hashCode);
  print(a1 == a2);
  // a2 =  a1;
  print(a1.hashCode);
  print(identityHashCode(a1));
  print(identityHashCode(a2));

  int x;
  x = 19;
  print(x);

  var y = null;
  print(y.runtimeType);
  y = 10;
  print(y.runtimeType);
  y = "snehal";
  print(y.runtimeType);
}