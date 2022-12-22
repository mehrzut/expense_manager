import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_manager/features/expenses/domain/usecases/get_person_expenses.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/expense_entity.dart';

part 'person_expense_event.dart';
part 'person_expense_state.dart';
part 'person_expense_bloc.freezed.dart';

@injectable
class PersonExpenseBloc extends Bloc<PersonExpenseEvent, PersonExpenseState> {
  final GetPersonExpenses getPersonExpenses;
  PersonExpenseBloc(this.getPersonExpenses) : super(const _Initial()) {
    on<_GetPersonExpense>(_onGetPersonExpense);
  }

  Future<FutureOr<void>> _onGetPersonExpense(
      _GetPersonExpense event, Emitter<PersonExpenseState> emit) async {
    emit(const PersonExpenseState.loading());
    try {
      final expenses = await getPersonExpenses(event.id);
      emit(PersonExpenseState.loaded(expenses));
    } catch (e) {
      log(e.toString());
      emit(PersonExpenseState.failed(e.toString()));
    }
  }
}
