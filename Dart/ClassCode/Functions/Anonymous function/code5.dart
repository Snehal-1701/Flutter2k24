void main() {
  var data = () => print("Lambda function");
  data();

  var add = (int a, int b) => a+b;
  var retAdd = add(10,20);
  print(retAdd);
  print(add.runtimeType);
}