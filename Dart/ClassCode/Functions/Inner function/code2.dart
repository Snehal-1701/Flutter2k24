void fun() {
  print("Start fun");
  void run() {
    print("In run");
  }
  run();
  print("End fun");
}

void main() {
  print("Start code");
  fun();
  print("End code");
}