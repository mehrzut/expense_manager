import 'package:expense_manager/core/database/people_table.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import 'database_table.dart';
import 'expenses_table.dart';

@singleton
class DataBaseHelper {
  static const _dbName = 'expense_manager.db';

  static final PeopleTable _peopleTable = PeopleTable();
  static final ExpensesTable _expensesTable = ExpensesTable();

  final List<DataBaseTable> _tables = [
    _peopleTable,
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

  //! People Table
  Future<List<PersonEntity>> getAllPeople() => _peopleTable.getAll(_db);

  Future<PersonEntity?> getPerson(int personId) =>
      _peopleTable.getById(_db, personId);

  Future<void> insertPerson(PersonEntity person) =>
      _peopleTable.insert(_db, person);

  Future<void> deletePerson(PersonEntity person) =>
      _peopleTable.delete(_db, person);

  Future<void> updatePerson(PersonEntity person) =>
      _peopleTable.update(_db, person);

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
