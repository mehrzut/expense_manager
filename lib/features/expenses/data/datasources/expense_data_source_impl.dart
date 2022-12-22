import 'package:expense_manager/core/database/database_helper.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:injectable/injectable.dart';

import 'expense_data_source.dart';

@LazySingleton(as: ExpenseDataSource)
class ExpenseDataSourceImpl implements ExpenseDataSource {
  final DataBaseHelper dataBaseHelper;
  @factoryMethod
  ExpenseDataSourceImpl(this.dataBaseHelper);

  @override
  Future<List<ExpenseEntity>> getAllExpenses() async {
    List<ExpenseEntity> allExpenses = await dataBaseHelper.getAllExpenses();
    allExpenses.sort(
      (a, b) => a.isPaid.compareTo(b.isPaid),
    );
    return allExpenses;
  }

  @override
  Future<void> createExpense(ExpenseEntity expense) {
    return dataBaseHelper.insertExpense(expense);
  }

  @override
  Future<void> updateExpense(ExpenseEntity expense) {
    return dataBaseHelper.updateExpense(expense);
  }

  @override
  Future<List<ExpenseEntity>> getPersonExpenses(int id) async {
    final allExpenses = await getAllExpenses();
    return allExpenses.where((element) => element.personId == id).toList();
  }
}
