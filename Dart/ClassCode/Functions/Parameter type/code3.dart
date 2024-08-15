// Parameter
// 1) Positional
// 2) Default
// 3) Named

// Default

void empInfo(int empId, String empName, [String cmpName = "Core2Web"]) {
  print(empId);
  print(empName);
  print(cmpName);
}
void main() {
  empInfo(12, "Snehal");
}
