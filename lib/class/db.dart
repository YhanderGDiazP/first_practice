import 'package:first_practice/class/user.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DB {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'users.db'),
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE users (id INTEGER PRIMARY KEY, email TEXT, password TEXT)",
      );
    }, version: 1);
  }

  static Future<Future<int>> insert(User user) async {
    Database database = await _openDB();

    return database.insert('users', user.toMap());
  }
}
