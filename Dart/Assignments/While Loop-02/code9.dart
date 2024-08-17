void main() {
  int num = 942111423;
  int temp = num;
  int rev = 0;
  while(temp > 0) {
    int digit = temp%10;
    rev = rev*10 + digit;
    temp ~/= 10;
  }
  print("Reverse of $num : $rev");
}