class Employee {
  int? empId;
  String? empName;
  double? empSal;

  Employee(int empId, String empName, double empSal) {
    print("Parameterized constructor");
    this.empId = empId;
    this.empName = empName;
    this.empSal = empSal;
  }

  void empInfo() {
    print(empId);
    print(empName);
    print(empSal);
  }
}

void main() {
  Employee emp = Employee(18, "Snehal", 9.5);
  emp.empInfo();
}