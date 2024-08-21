class Employee {
  int empId = 18;
  String empName = "Kanha";
  double empSal = 2.5;

  void empInfo() {
    print(empId);
    print(empName);
    print(empSal);
  }
}

void main() {
  // method - 1
  Employee obj1 = new Employee();
  obj1.empInfo();
  
  // method - 2
  Employee obj2 = Employee();
  obj2.empInfo();

  // method - 3
  new Employee().empInfo();

  // method - 4
  Employee().empInfo();
}