class Employee {
  int? empId;
  String? empName;
  double? empSal;

  Employee() {
    empId = 18;
    empName = "kanha";
    empSal = 2.5;
  }

  void empInfo() {
    print(empId);
    print(empName);
    print(empSal);
  }
}

void main() {
  Employee emp1 = new Employee();
  emp1.empInfo();
}