part of 'create_person_bloc.dart';

@freezed
class CreatePersonEvent with _$CreatePersonEvent {
  const factory CreatePersonEvent.createPerson(PersonEntity personEntity) = _CreatePerson;
}