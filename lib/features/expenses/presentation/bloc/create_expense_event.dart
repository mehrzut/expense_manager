part of 'create_expense_bloc.dart';

@freezed
class CreateExpenseEvent with _$CreateExpenseEvent {
  const factory CreateExpenseEvent.create(ExpenseEntity expenseEntity) = _CreateExpense;
}