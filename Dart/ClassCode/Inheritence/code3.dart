// Hierarchical inheritence 

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

class KatrajMacD extends MacDIndia  {
  void facility() {
    print("Drive Thru");
  }
}

void main() {
  SinhgadMacD sobj = SinhgadMacD();
  print(sobj.burger);
  print(sobj.fries);
  sobj.food();
  // sobj.facility();                //not defined for class SinhgadMacD

  KatrajMacD kobj = KatrajMacD();
  print(kobj.burger);
  print(kobj.fries);
  kobj.food();
  kobj.facility();
}