void main() {
  for(int i=20; i<=50; i++){
    int rem = i%4;
    if(rem!=0 && rem%4==3) {
      print(i);
    }
  }
}