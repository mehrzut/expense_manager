import 'package:bloc/bloc.dart';
import 'package:expense_manager/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'expense_input_state.dart';
part 'expense_input_cubit.freezed.dart';

@injectable
class ExpenseInputCubit extends Cubit<ExpenseInputState> {
  ExpenseInputCubit()
      : super(const ExpenseInputState(
            amount: null,
            currency: null,
            expenseType: null,
            personId: null,
            personName: null,
            title: null));
  void update({
    String? title,
    double? amount,
    String? currency,
    String? personName,
    int? personId,
    ExpenseType? expenseType,
  }) {
    if (title != null) {
      emit(state.copyWith(title: title));
    }
    if (amount != null) {
      emit(state.copyWith(amount: amount));
    }
    if (currency != null) {
      emit(state.copyWith(currency: currency));
    }
    if (personId != null) {
      emit(state.copyWith(personId: personId));
    }
    if (personName != null) {
      emit(state.copyWith(personName: personName));
    }
    if (expenseType != null) {
      emit(state.copyWith(expenseType: expenseType));
    }
  }
}
