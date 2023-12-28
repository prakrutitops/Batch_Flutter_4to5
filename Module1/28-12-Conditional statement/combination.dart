import 'dart:io';
void main()
{

  print("Enter Your Name");
  String? name = stdin.readLineSync();

  print("Enter Your Surname");
  String? surname = stdin.readLineSync();

  print("Enter Your Email");
  String? email = stdin.readLineSync();

  print("Enter Your Password");
  String? pass = stdin.readLineSync();

  print("\n Your Name is $name \n Your Surname is $surname \n Your Email is $email \n Your Password is $pass");


  if(email=="mihir@gmail.com" && pass=="1234")
  {
      print("Logged in Succesfully");
  }

  else
  {

   if(email!="mihir@gmail.com")
    {
      print("Your Email id is wrong");
    }
   if(pass!="1234")
    {
      print("Your Password is wrong");
    }
    else
    {
       print("Invalid Credentials");
    }

  }



}