import 'dart:math';
import 'package:flutter/material.dart';

import 'main2.dart';

void main()
{
  runApp(MaterialApp(home:BackGround()));
}
class RandomNumber extends StatefulWidget
{
  const RandomNumber({super.key});

  @override
  State<RandomNumber> createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber>
{

  late int randomnum;
  TextEditingController mynum = TextEditingController();
  String _message = '';
  bool _showResult = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var random = Random();
    randomnum = random.nextInt(25)+1;
    print(randomnum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Number Guessing Game"),backgroundColor:Colors.blue,foregroundColor: Colors.black,),
      body: Center(

          child: Column(

            children: [

              if (_showResult)
                Text(
                  _message,
                  style: TextStyle(fontSize: 20.0),
                ),
               SizedBox(height: 20),
                TextField(controller:mynum,decoration: InputDecoration(hintText: "Enter Any Number"),),
                SizedBox(height: 20),
                ElevatedButton(onPressed: ()
                {
                    String data = mynum.text.toString();


                      checkguess();



                }, child: Text("Check Number"))


            ],

          ),


      ),
    );
  }

  void checkguess()
  {
    int? guess = int.tryParse(mynum.text.toString());
      if(guess!=null)
      {
          setState(() {
            if(guess==randomnum)
            {
              _message = 'Congratulations! You guessed the number $randomnum!';
            }
            else if(guess < randomnum)
            {
              _message = 'Try Higher';
            }
            else
            {
              _message = 'Try Lesser';
            }
            _showResult = true;


          });
      }


  }
}
