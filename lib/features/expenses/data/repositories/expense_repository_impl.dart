import 'package:expense_manager/features/expenses/data/datasources/expense_data_source.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/expense_repository.dart';

@LazySingleton(as: ExpenseRepository)
class ExpenseRepositoryImpl implements ExpenseRepository {
  final ExpenseDataSource dataSource;

  ExpenseRepositoryImpl(this.dataSource);

  @override
  Future<List<ExpenseEntity>> getAllExpenses() {
    return dataSource.getAllExpenses();
  }

  @override
  Future<void> createExpense(ExpenseEntity expense) {
    return dataSource.createExpense(expense);
  }

  @override
  Future<void> updateExpense(ExpenseEntity expense) {
    return dataSource.updateExpense(expense);
  }

  @override
  Future<List<ExpenseEntity>> getPersonExpenses(int id) {
    return dataSource.getPersonExpenses(id);
  }
}
