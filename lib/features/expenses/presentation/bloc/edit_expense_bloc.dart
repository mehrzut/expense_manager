import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/expenses/domain/usecases/update_expense.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_expense_event.dart';
part 'edit_expense_state.dart';
part 'edit_expense_bloc.freezed.dart';

@injectable
class EditExpenseBloc extends Bloc<EditExpenseEvent, EditExpenseState> {
  final UpdateExpense updateExpense;
  EditExpenseBloc(this.updateExpense) : super(const _Initial()) {
    on<_EditExpenseEvent>(_onEditExpenseEvent);
  }

  FutureOr<void> _onEditExpenseEvent(
      _EditExpenseEvent event, Emitter<EditExpenseState> emit) async {
    emit(const EditExpenseState.editing());
    try {
      await updateExpense(event.expenseEntity);
      emit(const EditExpenseState.edited());
    } catch (e) {
      log(e.toString());
      emit(EditExpenseState.failed(e.toString()));
    }
  }
}
