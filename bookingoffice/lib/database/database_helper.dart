// import 'package:bookingoffice/models/office_model.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseHelper {
//   static DatabaseHelper? _instance;
//   static Database? _database;

//   DatabaseHelper._internal() {
//     _instance = this;
//   }

//   factory DatabaseHelper() => _instance ?? DatabaseHelper._internal();

//   static const String _tblFavorite = 'favorites';

//   Future<Database> _initializeDb() async {
//     var path = await getDatabasesPath();
//     var db = openDatabase(
//       '$path/bookingapp.db',
//       onCreate: (db, version) async {
//         await db.execute('''CREATE TABLE $_tblFavorite (
//              id INTEGER PRIMARY KEY,
//              name TEXT,
//              img TEXT,
//              title TEXT,
//              location TEXT,
//              locationdetail TEXT,
//              facility TEXT,
//              pricehours TEXT,
//              category TEXT,
//              capacity TEXT,
//              price REAL
//            )
//         ''');
//       },
//       version: 1,
//     );
//     return db;
//   }

//   Future<Database?> get database async {
//     _database ??= await _initializeDb();
//     return _database;
//   }

//   Future<void> insertFavorite(BuildingModel buildingModel)async {
//     final db = await database;
//     await db!.insert(_tblFavorite, buildingModel.toJson());
//   }

//   Future<List<BuildingModel>> getFavorites() async {
//     final db = await database;
//     List<Map<String, dynamic>> results = await db!.query(_tblFavorite);

//     return results.map((res) => BuildingModel.fromJson(res)).toList();
//   }

//   Future<Map> getFavoriteById(String id) async {
//     final db = await database;

//     List<Map<String, dynamic>> results = await db!.query(
//       _tblFavorite,
//       where: 'id = ?',
//       whereArgs: [id],
//     );

//     if (results.isNotEmpty) {
//       return results.first;
//     } else {
//       return {};
//     }
//   }

//   Future<void> removeFavorite(String id) async {
//     final db = await database;

//     await db!.delete(
//       _tblFavorite,
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }
// }