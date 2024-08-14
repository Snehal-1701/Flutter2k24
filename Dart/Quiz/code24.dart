void main() {
  int number = 5;
  int fact = 1;
  while(number >= 1) {
    fact *= number;
    number--;
  }
  print(fact);
}