void main() {
  int unit = 120;
  int totalCost = 0;
  if(unit < 0) {
    print("Invalid input");
  } else if(unit <= 90) {
    print("No charge");
  } else if(unit>90 && unit <= 180) {
    totalCost = 6*unit;
  } else if(unit > 180 && unit <= 250) {
    totalCost = 10 * unit;
  } else {
    totalCost = 15 * unit;
  }

  print(totalCost);
}