dynamic fun() {
  print("In fun");
  void run() {
    print("Run");
  }
  print("End fun");
  return run;
}
void main() {
  print("Start code");
  var retFun = fun();
  retFun();
  print("End code");
}