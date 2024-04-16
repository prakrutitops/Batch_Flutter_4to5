import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'constraints.dart/textfield.dart';

class EditPage extends StatefulWidget
{
    String docID;

    EditPage({required this.docID});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage>
{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();


  Future<void> _updateUser( docID, name, email, pass)
  {
    return updateUser
        .doc(docID)
        .update(
        {
          'Name': name, 'Email': email, 'Password': pass
        })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));

  }

  CollectionReference updateUser = FirebaseFirestore.instance.collection('Students');
  @override
  Widget build(BuildContext context)
  {
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>
      (
        future: FirebaseFirestore.instance
            .collection('Students')
            .doc(widget.docID)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Something Wrong in HomePage');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          //Getting Data From FireStore
          var data = snapshot.data?.data();
          var name = data!['Name'];
          var email = data['Email'];
          var pass = data['Password'];

    return Scaffold
      (
      appBar: AppBar(
        title: const Text('Add'),
      ),
      body: Form(
        key: _formkey,
        child: ListView
          (
              children:
              [
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    initialValue: name,
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 18),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please Fill Name';
                      }
                      return null;
                    },
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    initialValue: email,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 18),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please Fill Email';
                      }
                      if (!val.contains('@')) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    initialValue: pass,
                    onChanged: (value) {
                      pass = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 18),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    obscureText: true,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please Fill Password';
                      }
                      return null;
                    },
                  ),
                ),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  ElevatedButton(
  onPressed: () {
  if (_formkey.currentState!.validate()) {
  setState(() {
  _updateUser(widget.docID, name, email, pass);
  Navigator.pop(context);
  });
  }
  },
  child: const Text('Update'),
  ),
  ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
  backgroundColor:
  MaterialStateProperty.all(Colors.red),
  ),
  child: const Text('Reset'),
  ),
  ],
  ),
    ]))
          );
        });
  }
}