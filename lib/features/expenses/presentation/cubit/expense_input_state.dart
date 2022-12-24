part of 'expense_input_cubit.dart';

@freezed
class ExpenseInputState with _$ExpenseInputState {
  const factory ExpenseInputState({
    required String? title,
    required double? amount,
    required String? currency,
    required String? personName,
    required int? personId,
    required ExpenseType? expenseType,
    required bool? isPaid,
    required DateTime? date
  }) = _ExpenseInputState;
}
