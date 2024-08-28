import 'dart:io';

void main() {
    stdout.write("Enter no. of rows : ");
    int row = int.parse(stdin.readLineSync()!);
   
    int num1 = row;
    int num2 = 1;
    for(int i=1; i<=row; i++) {
        int num = num1;
        for(int j=1; j<=i; j++) {
            if(j%2 == 1) {
                stdout.write("$num ");
                num++;
            }else {
                stdout.write("$num2 ");
                num2++;
            }
        }
        num1--;
        print("");
       
    }
}
