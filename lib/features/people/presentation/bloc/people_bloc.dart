import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/domain/usecases/get_all_people.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'people_event.dart';
part 'people_state.dart';
part 'people_bloc.freezed.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final GetAllPeople getAllPeople;
  PeopleBloc(this.getAllPeople) : super(const _Initial()) {
    on<_GetAllPeople>(_onGetAllPeopleHandler);
  }
  void _onGetAllPeopleHandler(
      _GetAllPeople event, Emitter<PeopleState> emit) async {
    emit(const PeopleState.loading());
    try {
      final data = await getAllPeople(null);
      emit(PeopleState.loaded(data));
    } catch (e) {
      log(e.toString());
      emit(PeopleState.failed(e.toString()));
    }
  }
}
