import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/expenses/domain/usecases/create_expense.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_expense_event.dart';
part 'create_expense_state.dart';
part 'create_expense_bloc.freezed.dart';

@injectable
class CreateExpenseBloc extends Bloc<CreateExpenseEvent, CreateExpenseState> {
  final CreateExpense createExpense;
  CreateExpenseBloc(this.createExpense) : super(const _Initial()) {
    on<_CreateExpense>(_onCreateExpense);
  }

  Future<FutureOr<void>> _onCreateExpense(
      _CreateExpense event, Emitter<CreateExpenseState> emit) async {
    emit(const CreateExpenseState.loading());
    try {
      await createExpense(event.expenseEntity);
      emit(const CreateExpenseState.success());
    } catch (e) {
      log(e.toString());
      emit(CreateExpenseState.failed(e.toString()));
    }
  }
}
