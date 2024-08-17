class Demo {
  int x = 20;
  Demo() {
    print("In constructor");
  }
}

void main() {
  Demo obj = new Demo();
  int ans = obj.x >> 2;
  obj.x = ans + (ans & obj.x);
  print(obj.x);
}