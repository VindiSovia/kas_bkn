// import 'dart:io';

// import 'package:drift/native.dart';
// import 'package:kas_bkn/db/pemasukan.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as p;

// // ... the TodoItems table definition stays the same

// @DriftDatabase(tables: [IsiPemasukan, IsiPengeluaran])
// class AppDatabase extends _$AppDatabase {
//   AppDatabase() : super(_openConnection());

//   @override
//   int get schemaVersion => 1;
// }

// LazyDatabase _openConnection() {
//   // the LazyDatabase util lets us find the right location for the file async.
//   return LazyDatabase(() async {
//     // put the database file, called db.sqlite here, into the documents folder
//     // for your app.
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(p.join(dbFolder.path, 'db.sqlite'));
//     return NativeDatabase.createInBackground(file);
//   });
// }
