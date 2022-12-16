part of 'edit_expense_bloc.dart';

@freezed
class EditExpenseState with _$EditExpenseState {
  const factory EditExpenseState.initial() = _Initial;
  const factory EditExpenseState.editing() = EditingExpenseState;
  const factory EditExpenseState.edited() = EditedExpenseState;
  const factory EditExpenseState.failed(String message) = FailedEditingExpenseState;
}
