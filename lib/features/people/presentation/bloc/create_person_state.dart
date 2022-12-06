part of 'create_person_bloc.dart';

@freezed
class CreatePersonState with _$CreatePersonState {
  const factory CreatePersonState.initial() = _Initial;
  const factory CreatePersonState.loading(PersonEntity personEntity) = _Loading;
  const factory CreatePersonState.success() = SuccessPersonCreation;
  const factory CreatePersonState.failed(String message) = FailedPersonCreation;
}
