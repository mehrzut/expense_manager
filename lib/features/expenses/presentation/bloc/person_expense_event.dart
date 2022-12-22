part of 'person_expense_bloc.dart';

@freezed
class PersonExpenseEvent with _$PersonExpenseEvent {
   const factory PersonExpenseEvent.get(int id) = _GetPersonExpense;
}