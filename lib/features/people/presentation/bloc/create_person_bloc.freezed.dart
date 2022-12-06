// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_person_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePersonEvent {
  PersonEntity get personEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity personEntity) createPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity personEntity)? createPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity personEntity)? createPerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePerson value) createPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePerson value)? createPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePerson value)? createPerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePersonEventCopyWith<CreatePersonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePersonEventCopyWith<$Res> {
  factory $CreatePersonEventCopyWith(
          CreatePersonEvent value, $Res Function(CreatePersonEvent) then) =
      _$CreatePersonEventCopyWithImpl<$Res, CreatePersonEvent>;
  @useResult
  $Res call({PersonEntity personEntity});

  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class _$CreatePersonEventCopyWithImpl<$Res, $Val extends CreatePersonEvent>
    implements $CreatePersonEventCopyWith<$Res> {
  _$CreatePersonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personEntity = null,
  }) {
    return _then(_value.copyWith(
      personEntity: null == personEntity
          ? _value.personEntity
          : personEntity // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonEntityCopyWith<$Res> get personEntity {
    return $PersonEntityCopyWith<$Res>(_value.personEntity, (value) {
      return _then(_value.copyWith(personEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreatePersonCopyWith<$Res>
    implements $CreatePersonEventCopyWith<$Res> {
  factory _$$_CreatePersonCopyWith(
          _$_CreatePerson value, $Res Function(_$_CreatePerson) then) =
      __$$_CreatePersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PersonEntity personEntity});

  @override
  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class __$$_CreatePersonCopyWithImpl<$Res>
    extends _$CreatePersonEventCopyWithImpl<$Res, _$_CreatePerson>
    implements _$$_CreatePersonCopyWith<$Res> {
  __$$_CreatePersonCopyWithImpl(
      _$_CreatePerson _value, $Res Function(_$_CreatePerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personEntity = null,
  }) {
    return _then(_$_CreatePerson(
      null == personEntity
          ? _value.personEntity
          : personEntity // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ));
  }
}

/// @nodoc

class _$_CreatePerson implements _CreatePerson {
  const _$_CreatePerson(this.personEntity);

  @override
  final PersonEntity personEntity;

  @override
  String toString() {
    return 'CreatePersonEvent.createPerson(personEntity: $personEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePerson &&
            (identical(other.personEntity, personEntity) ||
                other.personEntity == personEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePersonCopyWith<_$_CreatePerson> get copyWith =>
      __$$_CreatePersonCopyWithImpl<_$_CreatePerson>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity personEntity) createPerson,
  }) {
    return createPerson(personEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity personEntity)? createPerson,
  }) {
    return createPerson?.call(personEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity personEntity)? createPerson,
    required TResult orElse(),
  }) {
    if (createPerson != null) {
      return createPerson(personEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePerson value) createPerson,
  }) {
    return createPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePerson value)? createPerson,
  }) {
    return createPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePerson value)? createPerson,
    required TResult orElse(),
  }) {
    if (createPerson != null) {
      return createPerson(this);
    }
    return orElse();
  }
}

abstract class _CreatePerson implements CreatePersonEvent {
  const factory _CreatePerson(final PersonEntity personEntity) =
      _$_CreatePerson;

  @override
  PersonEntity get personEntity;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePersonCopyWith<_$_CreatePerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePersonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PersonEntity personEntity) loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PersonEntity personEntity)? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PersonEntity personEntity)? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SuccessPersonCreation value) success,
    required TResult Function(FailedPersonCreation value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonCreation value)? success,
    TResult? Function(FailedPersonCreation value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonCreation value)? success,
    TResult Function(FailedPersonCreation value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePersonStateCopyWith<$Res> {
  factory $CreatePersonStateCopyWith(
          CreatePersonState value, $Res Function(CreatePersonState) then) =
      _$CreatePersonStateCopyWithImpl<$Res, CreatePersonState>;
}

/// @nodoc
class _$CreatePersonStateCopyWithImpl<$Res, $Val extends CreatePersonState>
    implements $CreatePersonStateCopyWith<$Res> {
  _$CreatePersonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CreatePersonStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreatePersonState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PersonEntity personEntity) loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PersonEntity personEntity)? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PersonEntity personEntity)? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SuccessPersonCreation value) success,
    required TResult Function(FailedPersonCreation value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonCreation value)? success,
    TResult? Function(FailedPersonCreation value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonCreation value)? success,
    TResult Function(FailedPersonCreation value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreatePersonState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({PersonEntity personEntity});

  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CreatePersonStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personEntity = null,
  }) {
    return _then(_$_Loading(
      null == personEntity
          ? _value.personEntity
          : personEntity // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonEntityCopyWith<$Res> get personEntity {
    return $PersonEntityCopyWith<$Res>(_value.personEntity, (value) {
      return _then(_value.copyWith(personEntity: value));
    });
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.personEntity);

  @override
  final PersonEntity personEntity;

  @override
  String toString() {
    return 'CreatePersonState.loading(personEntity: $personEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.personEntity, personEntity) ||
                other.personEntity == personEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PersonEntity personEntity) loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return loading(personEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PersonEntity personEntity)? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call(personEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PersonEntity personEntity)? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(personEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SuccessPersonCreation value) success,
    required TResult Function(FailedPersonCreation value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonCreation value)? success,
    TResult? Function(FailedPersonCreation value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonCreation value)? success,
    TResult Function(FailedPersonCreation value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreatePersonState {
  const factory _Loading(final PersonEntity personEntity) = _$_Loading;

  PersonEntity get personEntity;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessPersonCreationCopyWith<$Res> {
  factory _$$SuccessPersonCreationCopyWith(_$SuccessPersonCreation value,
          $Res Function(_$SuccessPersonCreation) then) =
      __$$SuccessPersonCreationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessPersonCreationCopyWithImpl<$Res>
    extends _$CreatePersonStateCopyWithImpl<$Res, _$SuccessPersonCreation>
    implements _$$SuccessPersonCreationCopyWith<$Res> {
  __$$SuccessPersonCreationCopyWithImpl(_$SuccessPersonCreation _value,
      $Res Function(_$SuccessPersonCreation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessPersonCreation implements SuccessPersonCreation {
  const _$SuccessPersonCreation();

  @override
  String toString() {
    return 'CreatePersonState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessPersonCreation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PersonEntity personEntity) loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PersonEntity personEntity)? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PersonEntity personEntity)? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SuccessPersonCreation value) success,
    required TResult Function(FailedPersonCreation value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonCreation value)? success,
    TResult? Function(FailedPersonCreation value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonCreation value)? success,
    TResult Function(FailedPersonCreation value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessPersonCreation implements CreatePersonState {
  const factory SuccessPersonCreation() = _$SuccessPersonCreation;
}

/// @nodoc
abstract class _$$FailedPersonCreationCopyWith<$Res> {
  factory _$$FailedPersonCreationCopyWith(_$FailedPersonCreation value,
          $Res Function(_$FailedPersonCreation) then) =
      __$$FailedPersonCreationCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedPersonCreationCopyWithImpl<$Res>
    extends _$CreatePersonStateCopyWithImpl<$Res, _$FailedPersonCreation>
    implements _$$FailedPersonCreationCopyWith<$Res> {
  __$$FailedPersonCreationCopyWithImpl(_$FailedPersonCreation _value,
      $Res Function(_$FailedPersonCreation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedPersonCreation(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedPersonCreation implements FailedPersonCreation {
  const _$FailedPersonCreation(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreatePersonState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedPersonCreation &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedPersonCreationCopyWith<_$FailedPersonCreation> get copyWith =>
      __$$FailedPersonCreationCopyWithImpl<_$FailedPersonCreation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PersonEntity personEntity) loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PersonEntity personEntity)? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PersonEntity personEntity)? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(SuccessPersonCreation value) success,
    required TResult Function(FailedPersonCreation value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonCreation value)? success,
    TResult? Function(FailedPersonCreation value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonCreation value)? success,
    TResult Function(FailedPersonCreation value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedPersonCreation implements CreatePersonState {
  const factory FailedPersonCreation(final String message) =
      _$FailedPersonCreation;

  String get message;
  @JsonKey(ignore: true)
  _$$FailedPersonCreationCopyWith<_$FailedPersonCreation> get copyWith =>
      throw _privateConstructorUsedError;
}
