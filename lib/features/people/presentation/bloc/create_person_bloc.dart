import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/domain/usecases/create_person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_person_event.dart';
part 'create_person_state.dart';
part 'create_person_bloc.freezed.dart';

@injectable
class CreatePersonBloc extends Bloc<CreatePersonEvent, CreatePersonState> {
  final CreatePerson createPerson;
  CreatePersonBloc(this.createPerson) : super(const _Initial()) {
    on<_CreatePerson>(_onCreatePersonHandler);
  }

  FutureOr<void> _onCreatePersonHandler(
      _CreatePerson event, Emitter<CreatePersonState> emit) async {
    emit(CreatePersonState.loading(event.personEntity));
    try {
      await createPerson(event.personEntity);
      emit(const CreatePersonState.success());
    } catch (e) {
      log(e.toString());
      emit(CreatePersonState.failed(e.toString()));
    }
  }
}
