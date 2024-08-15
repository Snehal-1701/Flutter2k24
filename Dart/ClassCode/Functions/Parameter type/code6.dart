void main(){
  empInfo(empId:1, cmpName:"Infosys", empSal:2.5);
}

void empInfo({int? empId, String? empName, String? cmpName, double? empSal=2.0}){
  print(empId);
  print(empName);
  print(cmpName);
  print(empSal);
}