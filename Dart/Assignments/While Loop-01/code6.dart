void main() {
  int i = 20;
  while(i<50) {
    int rem = i % 4;
    if(rem%4==3 && i%4!=0) {
      print(i);
    }
    i++;
  }
}