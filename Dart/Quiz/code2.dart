void main() {
  int total = 900;
  int teamScore = 1200;
  int fairPlayPoints = -300;
  if(total >= (teamScore-fairPlayPoints)) {
    print("Team qialified");
  } else {
    print("Not qualified");
  }
  print("Total points are more than fairPlayPoints");
}