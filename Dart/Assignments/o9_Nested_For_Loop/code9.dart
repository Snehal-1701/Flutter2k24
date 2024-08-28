import 'dart:io';

void main() {
    stdout.write("Enter no. of rows : ");
    int row = int.parse(stdin.readLineSync()!);
   
    int num = 1;
   
    for(int i=1; i<=row; i++) {
       
        int num1 = num;
       
        for(int j=1; j<=i; j++) {
           
            if(j%2 == 1) {
                stdout.write("${num1*num1*num1} ");
            }else {
                stdout.write("${num1*num1} ");
            }
            num1++;
        }
       
        num++;
        print("");
       
    }
}