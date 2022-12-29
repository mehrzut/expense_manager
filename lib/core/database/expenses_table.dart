import 'package:expense_manager/core/database/database_table.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:sqflite_common/sqlite_api.dart';

class ExpensesTable implements DataBaseTable<ExpenseEntity> {
  @override
  String get tableName => 'EXPENSES_TABLE';
  static const columnId = '_id';
  static const columnDescription = 'description';
  static const columnPrice = 'price';
  static const columnPersonName = 'personName';
  static const columnPersonId = 'personId';
  static const columnExpenseType = 'expenseType';
  static const columnIsPaid = 'isPaid';
  static const columnDate = 'date';

  @override
  Future<void> create(Database db) async {
    return await db.execute(
        'CREATE TABLE $tableName ($columnId INTEGER PRIMARY KEY AUTOINCREMENT, $columnDescription TEXT, $columnPrice REAL, $columnExpenseType TEXT, $columnPersonId INTEGER, $columnIsPaid INTEGER, $columnDate TEXT)');
  }

  @override
  Future<void> delete(Database db, ExpenseEntity data) {
    return db.delete(tableName, where: '$columnId = ?', whereArgs: [data.id]);
  }

  @override
  Future<List<ExpenseEntity>> getAll(Database db) async {
    final List<Map<String, dynamic>> data = await db.query(tableName);
    return data.map((e) => ExpenseEntity.fromJson(e)).toList();
  }

  @override
  Future<ExpenseEntity?> getById(Database db, int id) async {
    final List<Map<String, dynamic>> data = await db.query(tableName);
    return data
        .map((e) => ExpenseEntity.fromJson(e))
        .toList()
        .firstWhere((element) => element.id == id);
  }

  @override
  Future<void> insert(Database db, ExpenseEntity data) {
    return db.insert(tableName, data.toJsonWithoutNull());
  }

  @override
  Future<void> update(Database db, ExpenseEntity data) {
    Map<String, dynamic> map = data.toJsonWithoutNull();
    map.remove('_id');
    return db.update(tableName, map, where: '$columnId = ?', whereArgs: [data.id]);
  }
}
