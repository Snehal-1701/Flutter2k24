class MacDIndia {
  double burger = 150.0;
  double fries = 90.0;

  void food() {
    print("Burger, price : $burger");
    print("Fries, price : $fries");
  }
}

class SinhgadMacD extends MacDIndia {

}

void main() {
  SinhgadMacD obj = SinhgadMacD();
  obj.food();
}