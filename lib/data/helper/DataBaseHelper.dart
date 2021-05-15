import 'package:moneypit_flutter/data/query/UserQuery.dart';
import 'package:sqflite/sqflite.dart' as sqlite;
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart' as path;

class DataBaseHelper {
  static DataBaseHelper dbHelper = DataBaseHelper._singleton();

  factory DataBaseHelper() {
    return dbHelper;
  }

  DataBaseHelper._singleton();

  final tables = [UserQuery.CREATE_TABLE];

  Future<Database> openDB() async {
    final dbPath = await sqlite.getDatabasesPath();
    return sqlite.openDatabase(path.join(dbPath, 'persona.db'),
        onCreate: (db, version) {
      tables.forEach((table) async {
        await db.execute(table).then((value) {
          print("berashil ");
        }).catchError((err) {
          print("errornya ${err.toString()}");
        });
      });
      print('Table Created');
    }, version: 1);
  }

  insert(String table, Map<String, Object> data) {
    openDB().then((db) {
      db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
    }).catchError((err) {
      print("error $err");
    });
  }

  Future<List> getData(String tableName) async {
    final db = await openDB();
    var result = await db.query(tableName);
    return result.toList();
  }
}
