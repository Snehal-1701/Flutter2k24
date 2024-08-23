class Info {
  String name = "Ritesh";
  int age = 20;

  Info(String name, int age) {
    this.name = name;
    this.age = age;
  }
  int getAge() {
    return ++age;
  }
}

void main() {
  Info person1 = Info("Jayesh", 30);
  print(person1.age);
}