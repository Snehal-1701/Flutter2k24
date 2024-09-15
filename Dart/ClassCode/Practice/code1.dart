
late String name;
void main() {
  double x = 10.6;
  double y = 10;
  print(x);
  print(y);

  name  = "Snehal";
  print(name);
  int? a;
  a ??= 3;
  print(a);
  a = null;
  a ??= 5;
  print(a);

  print(1 ?? 2);
  print(null ?? 12);
  print(12 ?? null);
  print(null ?? null);

  int c = 10;
  print(~c);
  print(10 is! double);
  print(10 as dynamic);

  // var m1 ;
  // m1 = 1;
  // print(m1.runtimeType);

  // m1 = 1.9;
  // print(m1.runtimeType);

  // m1 = "Snehal";
  // print(m1.runtimeType);

  // m1 = true;
  // print(m1.runtimeType);

  // print(!10);
  print(10 & 20);
  print(10 | 20);
  print(10 ^ 20);
  print(10 ^ 20);
  print(10 ^ 7);
  print(~10);
  print(10 << 2);
  print(10 >>> 2);
  print(10 >> 2);
  var s3 = "It's easy to escape the string delimiter.";
  print(s3);
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);
}