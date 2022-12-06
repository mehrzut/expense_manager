part of 'people_bloc.dart';

@freezed
class PeopleState with _$PeopleState {

  const factory PeopleState.initial() = _Initial;
  const factory PeopleState.loading() = _Loading;
  const factory PeopleState.loaded(List<PersonEntity> people) = _Loaded;
  const factory PeopleState.failed(String message) = FailedGetAllPeople;
}
