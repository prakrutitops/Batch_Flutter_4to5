import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add.dart';


class HomePage extends StatefulWidget
{
  const HomePage({Key? key}) : super(key: key);

  @override

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //get all detail from collection
  final Stream<QuerySnapshot> studentRecords = FirebaseFirestore.instance.collection('Students').snapshots();



  @override
  Widget build(BuildContext context) {

    return StreamBuilder<QuerySnapshot>(
        stream: studentRecords,

        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot)
        {
         if (snapshot.hasError)
         {
          print('Something Wrong in HomePage');
        }
         if (snapshot.connectionState == ConnectionState.waiting)
         {
            return const Center(
              child: CircularProgressIndicator(),
              );
        }
         final List firebaseData = [];
         snapshot.data?.docs.map((DocumentSnapshot documentSnapshot) {
           Map store = documentSnapshot.data() as Map<String, dynamic>;
           firebaseData.add(store);
           store['id'] = documentSnapshot.id;
         }).toList();

         return Scaffold(
            appBar: AppBar(
              title: Text('Crud Operation'.toUpperCase()),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddPage(),
                        ),
                      );
                    },
                    child: const Text('Add'),
                  ),
                )
              ],
            ),
            body: Container(
              margin: const EdgeInsets.all(8),
              child: SingleChildScrollView
                (

              child: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>
                {
                1: FixedColumnWidth(150),
                },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                  children: [

              TableRow(
              children: [
              TableCell(
              child: Container(
                color: Colors.greenAccent,
                child: Center(
                  child: Text(
                    'Fname',
                    // style: txt,
                  ),
                ),
              ),
              ),

              TableCell(
                child: Container(
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text(
                      'Lname',
                      // style: txt,
                    ),
                  ),
                ),
              ),

              ],),

             for (var i = 0; i < firebaseData.length; i++) ...[

                   TableRow(
                       children: [
                         TableCell(
                           child: SizedBox(
                             child: Center(
                               child: Text(
                                 firebaseData[i]['Name'],
                                 // style: txt2,
                               ),
                             ),
                           ),
                         ),
                         TableCell(
                           child: SizedBox(
                             child: Center(
                               child: Text(
                                 firebaseData[i]['Email'],
                                 // style: txt2,
                               ),
                             ),
                           ),
                         ),

               ],



                         ),]]))));
                         });
  }
}