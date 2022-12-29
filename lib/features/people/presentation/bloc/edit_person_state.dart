part of 'edit_person_bloc.dart';

@freezed
class EditPersonState with _$EditPersonState {
    const factory EditPersonState.initial() = _Initial;
  const factory EditPersonState.loading(PersonEntity personEntity) = _Loading;
  const factory EditPersonState.success() = SuccessPersonEdit;
  const factory EditPersonState.failed(String message) = FailedPersonEdit;
}
