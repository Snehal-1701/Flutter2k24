class MacDIndia {
  double burger = 150.0;
  double fries = 90.0;

  void food() {
    print("Burger, price : $burger");
    print("Fries, price : $fries");
  }
}

class KatrajMacD extends MacDIndia {
  void facility() {
    print("In facility");
  }
}
class SinhgadMacD extends KatrajMacD {

}

void main() {
  SinhgadMacD obj = SinhgadMacD();
  obj.food();
  obj.facility();
}