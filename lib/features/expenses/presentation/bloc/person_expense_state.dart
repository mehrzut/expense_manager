part of 'person_expense_bloc.dart';

@freezed
class PersonExpenseState with _$PersonExpenseState {
   const factory PersonExpenseState.initial() = _Initial;
  const factory PersonExpenseState.loading() = _Loading;
  const factory PersonExpenseState.loaded(List<ExpenseEntity> expenses) = _Loaded;
  const factory PersonExpenseState.failed(String error) = FailedGetPersonExpenses;
}
