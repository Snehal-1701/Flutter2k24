void main() {
  int x = 10;
  int y = 20;
  for(int i=0; i<6; i++) {
    if(x++ < 10 || --y < x) {
      print(i);
    }
  }
}