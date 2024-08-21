class Employee {
  int? empId;
  String? empName;
  double? empSal;

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