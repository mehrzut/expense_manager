import 'package:sqflite/sqflite.dart';

abstract class DataBaseTable<T> {
  final String tableName = '';

  Future<List<T>> getAll(Database db);

  Future<T?> getById(Database db, int id);

  Future<void> create(Database db);

  Future<void> insert(Database db, T data);

  Future<void> update(Database db, T data);
  
  Future<void> delete(Database db, T data);
}
