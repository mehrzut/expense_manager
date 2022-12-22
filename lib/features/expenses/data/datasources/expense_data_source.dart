import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';

abstract class ExpenseDataSource {
  Future<List<ExpenseEntity>> getAllExpenses();

  Future<void> createExpense(ExpenseEntity expense);

  Future<void> updateExpense(ExpenseEntity expense);

  Future<List<ExpenseEntity>> getPersonExpenses(int id);
}
