class Coder {
  void devType() {

  }
  void fun() {

  }
}

class Employee extends Coder {

  void devType() {
    print("Type of employee/ developer");
  }
}

class WebDev extends Coder {
  
  void devType() {
    print("WebDev");
  }
}

class MobileDev extends Coder {

  void devType() {
    print("MobileDev");
  }
  // void fun() {
  //   print("In fun");
  // }
}

void main() {
  WebDev obj = WebDev();
  obj.devType();

  Coder obj1 = MobileDev();
  obj1.devType();
  obj1.fun();
}