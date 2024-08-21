class Employee {
  int? empId;
  String? empName;
  double? empSal;

  Employee() {
    print("No-arg constructor");
  }

  void empInfo() {
    print(empId);
    print(empName);
    print(empSal);
  }
}

void main() {
  Employee emp = Employee();
  emp.empInfo();
}