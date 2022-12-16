part of 'edit_expense_bloc.dart';

@freezed
class EditExpenseEvent with _$EditExpenseEvent {
  const factory EditExpenseEvent.edit(ExpenseEntity expenseEntity) = _EditExpenseEvent;
}