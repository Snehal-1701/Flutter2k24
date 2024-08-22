void main() {
  int i = 1;
  int mult = 1;
  while(i<=10) {
    if(i%2==1) {
      mult *= i;
    }
    i++;
  }
  print("Multiplication : $mult");
}