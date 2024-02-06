import 'dart:io';

import 'CustomException.dart';

 class A
{
    void a();

}

void main()
{

  double balance = 10000;

  print("Your Current Balance is $balance");

  print("Enter Your Amount for Withdraw Money");
  double a = double.parse(stdin.readLineSync().toString());

    if(a<balance)
    {
        balance-=a;
        print("Your Remaining Balance is $balance");
    }
    else
    {
     // throw CustomException();
        try
          {
            throw CustomException();
          }
        catch(e)
        {
            double ra = a-balance;
            print("You need more $ra ruppees");
        }
    }






}