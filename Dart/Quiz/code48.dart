class Person {
  String? name;
  int? age;

  void disp() {
    print(name);
    print(age);
  }
}

void main() {
  Person per = Person();
  per.disp();
}