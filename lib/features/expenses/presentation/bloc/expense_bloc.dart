import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_manager/features/expenses/domain/usecases/get_all_expenses.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/expense_entity.dart';

part 'expense_event.dart';
part 'expense_state.dart';
part 'expense_bloc.freezed.dart';

@injectable
class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final GetAllExpenses getActiveExpenses;
  ExpenseBloc(this.getActiveExpenses) : super(const _Initial()) {
    on<_GetAllExpenses>(_onGetAllExpensesHandler);
  }

  FutureOr<void> _onGetAllExpensesHandler(
      _GetAllExpenses event, Emitter<ExpenseState> emit) async {
    emit(const ExpenseState.loading());
    try {
      final expenses = await getActiveExpenses(null);
      emit(ExpenseState.loaded(expenses));
    } catch (e) {
      log(e.toString());
      emit(ExpenseState.failed(e.toString()));
    }
  }
}
