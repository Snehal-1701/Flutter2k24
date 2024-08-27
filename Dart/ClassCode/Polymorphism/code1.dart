// overloading is not supported in dart

class MacDIndia {
  void food() {
    print("Defined reciepe");
  }

  void marketing() {
    print("Marketing");
  }
}

class SinhgadMacD extends MacDIndia {
  void marketing() {
    print("Puneri marketing");
  }
}

void main() {
  SinhgadMacD obj = SinhgadMacD();
  obj.food();
  obj.marketing();
}