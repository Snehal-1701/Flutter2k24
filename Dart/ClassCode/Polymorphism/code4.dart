// overloading is not supported in dart

class MacDIndia {
  void food() {
    print("Defined reciepe");
  }

  void marketing() {
    print("Marketing");
    // return 0;
  }
}

class SinhgadMacD extends MacDIndia {
  @override
  int marketing() {
    print("Puneri marketing");
    return 0;
  }
}

void main() {
  SinhgadMacD obj = SinhgadMacD();
  obj.food();
  obj.marketing();
}