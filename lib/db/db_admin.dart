import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  Database? myDatabase;
  static final DBAdmin db = DBAdmin._();
  DBAdmin._();

  getCheckDatabase() async{
    if (myDatabase != null) return myDatabase;
    myDatabase = await initDB(); //Creación de la base de datos
    return myDatabase;
  }

   Future<Database> initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "BookDB.db");
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int v) async {
        await db.execute("CREATE TABLE BOOK(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, author TEXT, description TEXT, image TEXT)");
      },
    );
  }
}
