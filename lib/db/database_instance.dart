import 'dart:io';

import 'package:kas_bkn/models/pencatatan_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseInstance {
  final String _databaseName = "kas_bkn.db";
  final int databaseVersion = 2;

  final String namaTabel = 'pencatatan';
  final String id = 'id';
  final String date = 'date';
  final String nominal = 'nominal';
  final String keterangan = 'keterangan';
  final String createdAt = 'created_at';
  final String updatedAt = 'updated_at';

  Database? _database;
  Future<Database> database() async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return openDatabase(path, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE ${namaTabel} ($id INTEGER PRIMARY KEY, $date DATE, $nominal INTEGER, $keterangan TEXT NULL, $createdAt TEXT NULL, $updatedAt TEXT NULL)');
  }

  Future<List<PencatatanModel>> all() async {
    final data = await _database!.query(namaTabel);
    List<PencatatanModel> result =
        data.map((e) => PencatatanModel.fromJson(e)).toList();
    return result;
  }
}
