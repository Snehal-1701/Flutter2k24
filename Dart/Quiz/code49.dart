class ageFunction {
  int per1Age = 10;
  int per2Age = 20;

  var result = (int per1Age, int per2Age) {
    int ans = ++per1Age & ++per2Age;
    int num = ans << 3;
    return num;
  };
}

void main() {
  ageFunction ageObj = new ageFunction();
  print(ageObj.result(5,6));

}