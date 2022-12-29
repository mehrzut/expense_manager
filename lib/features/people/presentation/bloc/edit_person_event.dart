part of 'edit_person_bloc.dart';

@freezed
class EditPersonEvent with _$EditPersonEvent {
  const factory EditPersonEvent.edit(PersonEntity personEntity) = _EditPersonEvent;
}