import 'package:expense_manager/core/database/users_table.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/users/domain/entities/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import 'database_table.dart';
import 'expenses_table.dart';

@singleton
class DataBaseHelper {
  static const _dbName = 'expense_manager.db';

  static final UsersTable _usersTable = UsersTable();
  static final ExpensesTable _expensesTable = ExpensesTable();

  final List<DataBaseTable> _tables = [
    _usersTable,
    _expensesTable,
  ];

  static late Database _db;

  DataBaseHelper() {
    _init();
  }

  void _init() async {
    final path = await getDatabasesPath();
    _db = await openDatabase('$path$_dbName', version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the tables
      for (DataBaseTable table in _tables) {
        table.create(db);
      }
    });
  }

  //! Users Table
  Future<List<UserEntity>> getAllUsers() => _usersTable.getAll(_db);

  Future<UserEntity?> getUser(int userId) => _usersTable.getById(_db, userId);

  Future<void> insertUser(UserEntity user) => _usersTable.insert(_db, user);

  Future<void> deleteUser(UserEntity user) => _usersTable.delete(_db, user);

  Future<void> updateUser(UserEntity user) => _usersTable.update(_db, user);

  //! Expenses Table
  Future<List<ExpenseEntity>> getAllExpenses() => _expensesTable.getAll(_db);

  Future<ExpenseEntity?> getExpense(int expenseId) =>
      _expensesTable.getById(_db, expenseId);

  Future<void> insertExpense(ExpenseEntity expense) =>
      _expensesTable.insert(_db, expense);

  Future<void> deleteExpense(ExpenseEntity expense) =>
      _expensesTable.delete(_db, expense);

  Future<void> updateExpense(ExpenseEntity expense) =>
      _expensesTable.update(_db, expense);
}
