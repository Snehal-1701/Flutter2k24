void main() {
  int sum = 0;
  int i = 20;
  while(i<120) {
    if(i%2==1) {
      sum += i;
    }
    i++;
  }
  print("Sum : $sum");
}