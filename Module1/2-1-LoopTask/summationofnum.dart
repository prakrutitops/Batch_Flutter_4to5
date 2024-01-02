import 'dart:io';

void main()
{
    double num,lastdigit=0;
    

    print("Enter Any Number");
    num = double.parse(stdin.readLineSync().toString());

    while(num>0)
    {
        lastdigit+=num%10;
        num= num/10;
    }
    print("Your Summation of all digit is $lastdigit");

}