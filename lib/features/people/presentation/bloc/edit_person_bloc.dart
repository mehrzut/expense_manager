import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:expense_manager/features/people/domain/usecases/edit_person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/person_entity.dart';

part 'edit_person_event.dart';
part 'edit_person_state.dart';
part 'edit_person_bloc.freezed.dart';

@injectable
class EditPersonBloc extends Bloc<EditPersonEvent, EditPersonState> {
  final EditPerson editPerson;
  EditPersonBloc(this.editPerson) : super(const _Initial()) {
    on<_EditPersonEvent>(_onEditPersonHandler);
  }

  FutureOr<void> _onEditPersonHandler(
      _EditPersonEvent event, Emitter<EditPersonState> emit) async {
    emit(EditPersonState.loading(event.personEntity));
    try {
      await editPerson(event.personEntity);
      emit(const EditPersonState.success());
    } catch (e) {
      log(e.toString());
      emit(EditPersonState.failed(e.toString()));
    }
  }
}
