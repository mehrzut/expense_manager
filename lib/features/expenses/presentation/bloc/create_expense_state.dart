part of 'create_expense_bloc.dart';

@freezed
class CreateExpenseState with _$CreateExpenseState {
  const factory CreateExpenseState.initial() = _Initial;
  const factory CreateExpenseState.loading() = CreatingExpense;
  const factory CreateExpenseState.success() = CreatedExpense;
  const factory CreateExpenseState.failed(String message) = FailedCreatingExpense;
}
