//TypeCheck operator

void main() {
  int a = 10;
  double b = 10.3;
  num c = 45;
  String str = "Snehal";
  bool flag = true;
  var d = 44;
  dynamic e = 4;

  print(a is int);
  print(a is num);
  print(a is double); 

  print(b is double);
  print(b is num);

  print(c is int);
  print(c is num);

  print(str is String);
  print(flag is bool);

 
}