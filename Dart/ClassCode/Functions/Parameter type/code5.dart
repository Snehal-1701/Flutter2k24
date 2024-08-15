// Parameter
// 1) Positional
// 2) Default
// 3) Named

// Named parameters

void empInfo({int? empId, String? empName, String cmpName = "Core2web"}) {
  print(empId);
  print(empName);
  print(cmpName);
}
void main() {
  empInfo(empId:12, empName: "Snehal", cmpName:"Incubators");
}
