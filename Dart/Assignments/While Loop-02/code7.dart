void main() {
  int count = 0;
  int num = 942111423;
  int temp = num;
  while(temp > 0) {
    int digit = temp%10;
    if(digit%2==1) {
      count++;
    }
    temp ~/= 10;
  }
  print("Count of odd digits in $num : $count");
}