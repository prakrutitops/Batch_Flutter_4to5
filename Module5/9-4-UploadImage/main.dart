import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  TextEditingController name = TextEditingController();
  File _imageFile = File("");

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Upload Data"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  TextFormField(controller:name,decoration: InputDecoration(hintText: "Enter Name"),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()
                  {
                    _pickImage();
                  }, child: Text("Choose Image")),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()
                  {
                    _imageFile != null ? _uploadData() : null;
                  }, child: Text("Upload Image")),
                ],
              ),
          ),
      );
  }

  void _pickImage()async
  {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null)
      {
        setState(()
        {
          _imageFile = File(pickedFile.path);
        });
      }

  }

  Future<void>_uploadData() async
  {
      try
      {
        var url = Uri.parse("https://topstech8.000webhostapp.com/API/upload.php");

        var request = http.MultipartRequest('POST', url)
        ..fields['category_name'] = name.text.toString()
          ..files.add(await http.MultipartFile.fromPath('category_img', _imageFile.path));

        var response = await request.send();

        if (response.statusCode == 200)
        {
          print(response);
          print(name.text.toString());
          print(_imageFile.path);
          print('Data uploaded successfully');

        }
        else
        {
          print('Failed to upload data. Error: ${response.statusCode}');
        }



      }
      catch(e)
      {
        print('Exception while uploading data: $e');
      }
  }
}

