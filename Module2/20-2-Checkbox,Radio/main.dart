import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets/radiobutton.dart';

void main()
{
  runApp(MaterialApp(home:RadioEx()));
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  bool pizza = false;
  bool burger = false;
  bool coffee = false;

  var total=0;
  var amount=0;
  var data="";





  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Checkbox Example"),),
      body: Center(

          child: Column(

              children: [


                    Text("Cafe Menu",style: TextStyle(backgroundColor: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 5.00),),

                  CheckboxListTile(
                      title: Text("Pizaa"),
                      subtitle: Text("Rs.100"),
                      value: pizza,
                      onChanged:(value)
                      {

                        setState(() {

                          this.pizza=value!;
                          //amount+=100;//amount=amount+100
                          //data+="\n Pizza @ Rs. 100";
                          if(pizza==true)
                          {
                            amount+=100;
                            data+="\n Pizza @ rs.100";
                          }
                          else
                          {
                            amount-=100;
                          }

                          //print(value);

                        });

                      }),

                CheckboxListTile(
                    title: Text("Burger"),
                    subtitle: Text("Rs.70"),
                    value: burger,
                    onChanged:(value)
                    {

                      setState(() {
                        this.burger=value!;
                       // amount+=70;
                        //data+="\n Burger @ Rs. 70";
                        if(burger==true)
                        {
                          amount+=70;
                          data+="\n Burger @ rs.70";
                        }
                        else
                        {
                          //data+="";
                          amount-=70;
                        }


                        //print(value);

                      });

                    }),

                CheckboxListTile(
                    title: Text("Coffee"),
                    subtitle: Text("Rs.120"),
                    value: coffee,
                    onChanged:(value)
                    {

                      setState(() {
                        this.coffee=value!;
                        //amount+=120;
                        //data+="\n Coffee @ Rs. 120";
                        if(coffee==true)
                        {
                          amount+=120;
                          data+="\n Coffee @ rs.100";
                        }
                        else
                        {
                          amount-=120;
                        }


                        //print(value);

                      });

                    }),
                    ElevatedButton(onPressed: ()
                    {
                        print("\n Total Bill is $data \n final bill :$amount" );

                    }, child: Text("Order"))



              ],


          ),

      ),

    );
  }
}

