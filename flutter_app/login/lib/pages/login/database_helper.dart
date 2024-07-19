import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('user.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const userTable = '''
    CREATE TABLE user (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      username TEXT NOT NULL UNIQUE,
      password TEXT NOT NULL
    )
    ''';

    await db.execute(userTable);
  }

  Future<int> createUser(String username, String password) async {
    final db = await instance.database;

    final user = {'username': username, 'password': password};
    return await db.insert('user', user);
  }

  Future<Map<String, dynamic>?> getUser(String username) async {
    final db = await instance.database;

    final result = await db.query(
      'user',
      where: 'username = ?',
      whereArgs: [username],
    );

    if (result.isNotEmpty) {
      return result.first;
    } else {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await instance.database;

    final result = await db.query('user');

    return result;
  }

  Future<int> clearUsers() async {
    final db = await instance.database;
    return await db.delete('user');
  }
}
