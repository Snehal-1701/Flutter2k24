import 'dart:io';

void main() {
    stdout.write("Enter no. of rows : ");
    int row = int.parse(stdin.readLineSync()!);
   
    int power = 0;
    int num = 1;
   
    for(int i=1; i<=row; i++) {
       
        power = (i%2 == 1) ? 2 : 3;
        int num1 = num;
       
        for(int j=1; j<=i; j++) {
           
            if(power == 2) {
                stdout.write("${num1*num1} ");
            } else {
                stdout.write("${num1*num1*num1} ");
            }
            power = power==2 ? 3 : 2;
            num1++;
           
        }
       
        num++;
        print("");
       
    }
}