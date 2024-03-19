import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyDb
{

  late Database db;

  Future open() async
  {
      //get the database path and create database
      var databasepath = await getDatabasesPath();
      String path = join(databasepath,'tops.db');
      print(path);

      //create table
     db = await openDatabase(path,version: 1,onCreate: (Database db, int version) async
     {
       await db.execute('''

                    CREATE TABLE IF NOT EXISTS students( 
                          id primary key,
                          name varchar(255) not null,
                          surname varchar(255) not null,
                          email varchar(255) not null
                      );

                      //create more table here
                  
                  ''');

       print('Table Created');
     });


  }
  Future<Map<dynamic, dynamic>?> getStudent(String email) async
  {
    List<Map> maps = await db.query('students',
        where: 'email = ?',
        whereArgs: [email]);
    //getting student data with roll no.
    if (maps.length > 0)
    {
      return maps.first;
    }
    return null;
  }


}