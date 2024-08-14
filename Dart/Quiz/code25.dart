void main() {
  int num = 12345;
  int sum = 0;
  while(num != 1) {
    int temp = num % 10;
    sum += temp;
    num = num ~/ 10;
  }
  print(sum);
}