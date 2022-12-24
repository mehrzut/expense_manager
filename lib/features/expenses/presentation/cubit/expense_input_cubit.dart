import 'package:bloc/bloc.dart';
import 'package:expense_manager/core/enums/enums.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
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
          title: null,
          isPaid: null,
          date: null,
        ));

  ExpenseEntity get expense => ExpenseEntity(
        description: state.title!,
        price: state.amount!,
        expenseType: state.expenseType!,
        personId: state.personId,
        personName: state.personName,
        isPaid: (state.isPaid ?? false) ? 1 : 0,
        date: state.date,
      );

  void update(
      {String? title,
      double? amount,
      String? personName,
      int? personId,
      ExpenseType? expenseType,
      bool? isPaid,
      DateTime? date}) {
    if (title != null) {
      emit(state.copyWith(title: title));
    }
    if (amount != null) {
      emit(state.copyWith(amount: amount));
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
    if (isPaid != null) {
      emit(state.copyWith(isPaid: isPaid));
    }
    if (date != null) {
      emit(state.copyWith(date: date));
    }
  }

  bool validate() {
    return state.amount != null &&
        state.expenseType != null &&
        state.personId != null &&
        state.personName != null &&
        state.personName!.isNotEmpty;
  }
}
