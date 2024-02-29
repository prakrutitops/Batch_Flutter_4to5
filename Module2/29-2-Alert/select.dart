import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget {
  const MyApp3({super.key});

  @override
  State<MyApp3> createState() => _MyApp3State();
}

enum Product { Apple, Samsung, Oppo, Redmi }


class _MyApp3State extends State<MyApp3> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Selection Dialog"),),
      body: Center(

          child:Column(

              children: [

                ElevatedButton(onPressed: () async
                {

                    //showdialogdata(context);
                    final Product? prodName = await showdialogdata(context);
                    print("Selected Product is $prodName");



                }, child: Text("Select Options"))


              ],


          ),


      ),


    );
  }

  Future<Product?> showdialogdata(BuildContext context) async
  {
    return await showDialog<Product>
      (
          context: context,
          builder: (BuildContext context)
          {

            return SimpleDialog
              (

                  children: [

                    SimpleDialogOption
                      (
                      onPressed: () {
                        Navigator.pop(context, Product.Apple);
                      },
                      child: const Text('Apple'),
                    ),

                    SimpleDialogOption
                      (
                      onPressed: () {
                        Navigator.pop(context, Product.Samsung);
                      },
                      child: const Text('Samsung'),
                    ),

                    SimpleDialogOption
                      (
                      onPressed: () {
                        Navigator.pop(context, Product.Oppo);
                      },
                      child: const Text('Oppo'),
                    ),

                    SimpleDialogOption
                      (
                      onPressed: () {
                        Navigator.pop(context, Product.Redmi);
                      },
                      child: const Text('Redmi'),
                    ),


                  ],



              );

                }

      );



        }
}
