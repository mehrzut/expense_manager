import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'database_table.dart';

class PeopleTable implements DataBaseTable<PersonEntity> {
  @override
  String get tableName => 'USER_TABLE';
  static const columnId = '_id';
  static const columnDisplayName = 'displayName';

  @override
  Future<void> create(Database db) async {
    return await db.execute(
        'CREATE TABLE $tableName ($columnId INTEGER PRIMARY KEY AUTOINCREMENT, $columnDisplayName TEXT)');
  }

  @override
  Future<List<PersonEntity>> getAll(Database db) async {
    final List<Map<String, dynamic>> data = await db.query(tableName);
    return data.map((e) => PersonEntity.fromJson(e)).toList();
  }

  @override
  Future<PersonEntity?> getById(Database db, int id) async {
    final List<Map<String, dynamic>> data = await db.query(tableName);
    return data
        .map((e) => PersonEntity.fromJson(e))
        .toList()
        .firstWhere((element) => element.id == id);
  }

  @override
  Future<void> delete(Database db, PersonEntity data) {
    return db.delete(tableName, where: '$columnId = ?', whereArgs: [data.id]);
  }

  @override
  Future<void> insert(Database db, PersonEntity data) {
    return db.insert(tableName, data.toJson());
  }

  @override
  Future<void> update(Database db, PersonEntity data) {
    return db.update(tableName, data.toJson());
  }
}
