class employeeInfo {
  String? name;
  double? salary;
  static int count = 0;

  employeeInfo(String name, double salary) {
    this.name = name;
    this.salary = salary;
    count ++;
  }
}

void main() {
  var employee1 = employeeInfo("Aniket", 38.9);
  var employee2 = employeeInfo("Ankesh", 50.0);

  print(employeeInfo.count);

}