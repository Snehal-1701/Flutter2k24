void main() {
  int count = 0;
  int num = 942111423;
  int temp = num;
  while(temp > 0) {
    temp ~/= 10;
    count++;
  }
  print("Count of digits in $num : $count");
}