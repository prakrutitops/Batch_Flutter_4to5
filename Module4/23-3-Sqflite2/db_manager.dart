import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper
{

  static final _databaseName = "topstech.db";
  static final _databaseVersion = 1;

  static final table = 'category';
  static final tableContact = 'contact';


  static final columnId = '_id';
  static final columnName = 'name';
  static final columnLName = 'lname';
  static final columnMobile = 'mobile';
  static final columnEmail = 'email';
  static final columnCategory = 'cat';
  static final columnProfile = 'profile';

  DbHelper._privateConstructor();
  static Database? _database;
  static final DbHelper instance = DbHelper._privateConstructor();
  Future<Database?> get database1 async
  {
    if (_database == null)
    {
      _database = await _initDatabase();
    }
    return _database;
  }

  Future<Database> get database async => _database ??= await _initDatabase();

  _initDatabase()async
  {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);

  }

  Future _onCreate(Database db, int version)async
  {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL 
          )
          ''');

    await db.execute('''
          CREATE TABLE $tableContact (
            $columnId INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL, 
            $columnLName TEXT NOT NULL, 
            $columnMobile TEXT NOT NULL, 
            $columnEmail TEXT NOT NULL, 
            $columnCategory TEXT NOT NULL, 
            $columnProfile TEXT NOT NULL
          )
          ''');
  }

  //insert category
  Future<int> insert(Map<String, dynamic> row) async
  {
    Database? db = await instance.database;
    return await db.insert(table, row);
  }

  //view category
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  //insert contact

  Future<int> insertContact(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db.insert(tableContact, row);
  }


//view contact
  Future<List<Map<String, dynamic>>> queryAllRowsofContact() async {
    Database db = await instance.database;
    return await db.query(tableContact);
  }

  //delete contact
  Future<int> deleteContact(int id) async {
    Database db = await instance.database;
    return await db.delete(tableContact, where: '$columnId = ?', whereArgs: [id]);
  }

  //delete category
  Future<int> delete(int id) async
  {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }


}