import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Database? database;

  Future<Database?> initDB() async {
    if (database != null) {
      return database!;
    } else {
      return await createDB();
    }
  }

  Future<Database> createDB() async {
    Directory databasePath = await getApplicationDocumentsDirectory();
    String path = join(databasePath.path, 'corona.db');
    return openDatabase(path, version: 1, onCreate: (db, version) {
      String qry =
          "CREATE TABLE Corona(id INTEGER PRIMARY KEY AUTOINCREMENT,country TEXT,cases INTEGER,active INTEGER,critical INTEGER, "
          "casesPerOneMillion INTEGER,tests INTEGER,testsPerOneMillion INTEGER,population INTEGER,continent TEXT,"
          "oneCasePerPeople INTEGER,oneDeathPerPeople INTEGER,oneTestPerPeople INTEGER,activePerOneMillion INTEGER,"
          "recoveredPerOneMillion INTEGER,criticalPerOneMillion INTEGER )";
      db.execute(qry);
    });
  }

  void insertDB({
    int? id,
    String? country,
    int? cases,
    int? active,
    int? critical,
    int? casesPerOneMillion,
    int? tests,
    int? testsPerOneMillion,
    int? population,
    String? continent,
    int? oneCasePerPeople,
    int? oneDeathPerPeople,
    int? oneTestPerPeople,
    dynamic activePerOneMillion,
    dynamic recoveredPerOneMillion,
    dynamic criticalPerOneMillion,
  }) async {
    database = await initDB();
    database!.insert("Corona", {
      "id": id,
      "country": country,
      "cases": cases,
      "active": active,
      "critical": critical,
      "casesPerOneMillion": casesPerOneMillion,
      "tests": tests,
      "testsPerOneMillion": testsPerOneMillion,
      "population": population,
      "continent": continent,
      "oneCasePerPeople": oneCasePerPeople,
      "oneDeathPerPeople": oneDeathPerPeople,
      "oneTestPerPeople": oneTestPerPeople,
      "activePerOneMillion": activePerOneMillion,
      "recoveredPerOneMillion": recoveredPerOneMillion,
      "criticalPerOneMillion": criticalPerOneMillion,
    });
  }

  Future<List<Map<String, Object?>>> readDB() async {
    database = await initDB();
    String qry = "SELECT * FROM Corona";
    return database!.rawQuery(qry);
  }
}
