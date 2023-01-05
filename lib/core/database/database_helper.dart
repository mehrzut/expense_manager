import 'dart:developer';

import 'package:expense_manager/core/database/people_table.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import 'database_table.dart';
import 'expenses_table.dart';

@lazySingleton
class DataBaseHelper {
  static const _dbName = 'expense_manager.db';

  static final PeopleTable _peopleTable = PeopleTable();
  static final ExpensesTable _expensesTable = ExpensesTable();

  static final List<DataBaseTable> _tables = [
    _peopleTable,
    _expensesTable,
  ];

  static late Database _db;

  DataBaseHelper._();

  @preResolve
  @factoryMethod
  static Future<DataBaseHelper> init() async {
    final path = await getDatabasesPath();
    _db = await openDatabase(
      '$path/$_dbName',
      version: 3,
      onCreate: (Database db, int version) async {
        // When creating the db, create the tables
        for (DataBaseTable table in _tables) {
          await table.create(db);
        }
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (newVersion > oldVersion) {
          if (oldVersion == 1) {
            try {
              db.execute(
                  "ALTER TABLE ${_expensesTable.tableName} ADD COLUMN ${ExpensesTable.columnDate} TEXT");
            } catch (e) {
              log(e.toString());
            }
          }
          if (oldVersion == 2) {
            try {
              db.execute(
                  "ALTER TABLE ${_peopleTable.tableName} ADD COLUMN ${PeopleTable.columnCardNo} TEXT");
            } catch (e) {
              log(e.toString());
            }
          }
        }
      },
    );
    return DataBaseHelper._();
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
  Future<List<ExpenseEntity>> getAllExpenses() async {
    final people = await getAllPeople();
    List<ExpenseEntity> expenses = await _expensesTable.getAll(_db);
    return expenses
        .map((e) => e.copyWith(
            personName: people
                .firstWhere((person) => person.id == e.personId,
                    orElse: () => PersonEntity(displayName: ''))
                .displayName))
        .toList();
  }

  Future<ExpenseEntity?> getExpense(int expenseId) =>
      _expensesTable.getById(_db, expenseId);

  Future<void> insertExpense(ExpenseEntity expense) =>
      _expensesTable.insert(_db, expense);

  Future<void> deleteExpense(ExpenseEntity expense) =>
      _expensesTable.delete(_db, expense);

  Future<void> updateExpense(ExpenseEntity expense) =>
      _expensesTable.update(_db, expense);
}
