class Employee {
  int? empId;
  String? empName;
  double? empSal;

  Employee() {
    print("No-arg constructor");
  }

  Employee.para(int empId, String empName, double empSal) {
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
  Employee emp1 = Employee();
  emp1.empInfo();

  Employee emp2 = Employee.para(18, "Snehal", 9.5);
  emp2.empInfo();
}