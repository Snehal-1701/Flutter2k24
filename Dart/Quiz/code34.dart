class Car {
  String? name;
  String? model;
  int? year;

  Car(String name, String model, int year) {
    this.name = name;
    this.model = model;
    this.year = year;
  }

  void displayInfo() {
    print("Make : $name, Model : $model, Tear : $year");
  }
}

void main() {
  var myCar = Car("Toyota", "Camry", 2022);
  myCar.displayInfo();
  myCar.year = 2023;
  myCar.displayInfo();
}