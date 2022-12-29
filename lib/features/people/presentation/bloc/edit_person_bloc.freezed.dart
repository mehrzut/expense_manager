// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_person_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPersonEvent {
  PersonEntity get personEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity personEntity) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity personEntity)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity personEntity)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPersonEvent value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPersonEvent value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPersonEvent value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPersonEventCopyWith<EditPersonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPersonEventCopyWith<$Res> {
  factory $EditPersonEventCopyWith(
          EditPersonEvent value, $Res Function(EditPersonEvent) then) =
      _$EditPersonEventCopyWithImpl<$Res, EditPersonEvent>;
  @useResult
  $Res call({PersonEntity personEntity});

  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class _$EditPersonEventCopyWithImpl<$Res, $Val extends EditPersonEvent>
    implements $EditPersonEventCopyWith<$Res> {
  _$EditPersonEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditPersonEventCopyWith<$Res>
    implements $EditPersonEventCopyWith<$Res> {
  factory _$$_EditPersonEventCopyWith(
          _$_EditPersonEvent value, $Res Function(_$_EditPersonEvent) then) =
      __$$_EditPersonEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PersonEntity personEntity});

  @override
  $PersonEntityCopyWith<$Res> get personEntity;
}

/// @nodoc
class __$$_EditPersonEventCopyWithImpl<$Res>
    extends _$EditPersonEventCopyWithImpl<$Res, _$_EditPersonEvent>
    implements _$$_EditPersonEventCopyWith<$Res> {
  __$$_EditPersonEventCopyWithImpl(
      _$_EditPersonEvent _value, $Res Function(_$_EditPersonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personEntity = null,
  }) {
    return _then(_$_EditPersonEvent(
      null == personEntity
          ? _value.personEntity
          : personEntity // ignore: cast_nullable_to_non_nullable
              as PersonEntity,
    ));
  }
}

/// @nodoc

class _$_EditPersonEvent implements _EditPersonEvent {
  const _$_EditPersonEvent(this.personEntity);

  @override
  final PersonEntity personEntity;

  @override
  String toString() {
    return 'EditPersonEvent.edit(personEntity: $personEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPersonEvent &&
            (identical(other.personEntity, personEntity) ||
                other.personEntity == personEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPersonEventCopyWith<_$_EditPersonEvent> get copyWith =>
      __$$_EditPersonEventCopyWithImpl<_$_EditPersonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonEntity personEntity) edit,
  }) {
    return edit(personEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonEntity personEntity)? edit,
  }) {
    return edit?.call(personEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonEntity personEntity)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(personEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPersonEvent value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPersonEvent value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPersonEvent value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _EditPersonEvent implements EditPersonEvent {
  const factory _EditPersonEvent(final PersonEntity personEntity) =
      _$_EditPersonEvent;

  @override
  PersonEntity get personEntity;
  @override
  @JsonKey(ignore: true)
  _$$_EditPersonEventCopyWith<_$_EditPersonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditPersonState {
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
    required TResult Function(SuccessPersonEdit value) success,
    required TResult Function(FailedPersonEdit value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonEdit value)? success,
    TResult? Function(FailedPersonEdit value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonEdit value)? success,
    TResult Function(FailedPersonEdit value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPersonStateCopyWith<$Res> {
  factory $EditPersonStateCopyWith(
          EditPersonState value, $Res Function(EditPersonState) then) =
      _$EditPersonStateCopyWithImpl<$Res, EditPersonState>;
}

/// @nodoc
class _$EditPersonStateCopyWithImpl<$Res, $Val extends EditPersonState>
    implements $EditPersonStateCopyWith<$Res> {
  _$EditPersonStateCopyWithImpl(this._value, this._then);

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
    extends _$EditPersonStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EditPersonState.initial()';
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
    required TResult Function(SuccessPersonEdit value) success,
    required TResult Function(FailedPersonEdit value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonEdit value)? success,
    TResult? Function(FailedPersonEdit value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonEdit value)? success,
    TResult Function(FailedPersonEdit value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditPersonState {
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
    extends _$EditPersonStateCopyWithImpl<$Res, _$_Loading>
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
    return 'EditPersonState.loading(personEntity: $personEntity)';
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
    required TResult Function(SuccessPersonEdit value) success,
    required TResult Function(FailedPersonEdit value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonEdit value)? success,
    TResult? Function(FailedPersonEdit value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonEdit value)? success,
    TResult Function(FailedPersonEdit value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EditPersonState {
  const factory _Loading(final PersonEntity personEntity) = _$_Loading;

  PersonEntity get personEntity;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessPersonEditCopyWith<$Res> {
  factory _$$SuccessPersonEditCopyWith(
          _$SuccessPersonEdit value, $Res Function(_$SuccessPersonEdit) then) =
      __$$SuccessPersonEditCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessPersonEditCopyWithImpl<$Res>
    extends _$EditPersonStateCopyWithImpl<$Res, _$SuccessPersonEdit>
    implements _$$SuccessPersonEditCopyWith<$Res> {
  __$$SuccessPersonEditCopyWithImpl(
      _$SuccessPersonEdit _value, $Res Function(_$SuccessPersonEdit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessPersonEdit implements SuccessPersonEdit {
  const _$SuccessPersonEdit();

  @override
  String toString() {
    return 'EditPersonState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessPersonEdit);
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
    required TResult Function(SuccessPersonEdit value) success,
    required TResult Function(FailedPersonEdit value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonEdit value)? success,
    TResult? Function(FailedPersonEdit value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonEdit value)? success,
    TResult Function(FailedPersonEdit value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessPersonEdit implements EditPersonState {
  const factory SuccessPersonEdit() = _$SuccessPersonEdit;
}

/// @nodoc
abstract class _$$FailedPersonEditCopyWith<$Res> {
  factory _$$FailedPersonEditCopyWith(
          _$FailedPersonEdit value, $Res Function(_$FailedPersonEdit) then) =
      __$$FailedPersonEditCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedPersonEditCopyWithImpl<$Res>
    extends _$EditPersonStateCopyWithImpl<$Res, _$FailedPersonEdit>
    implements _$$FailedPersonEditCopyWith<$Res> {
  __$$FailedPersonEditCopyWithImpl(
      _$FailedPersonEdit _value, $Res Function(_$FailedPersonEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedPersonEdit(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedPersonEdit implements FailedPersonEdit {
  const _$FailedPersonEdit(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EditPersonState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedPersonEdit &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedPersonEditCopyWith<_$FailedPersonEdit> get copyWith =>
      __$$FailedPersonEditCopyWithImpl<_$FailedPersonEdit>(this, _$identity);

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
    required TResult Function(SuccessPersonEdit value) success,
    required TResult Function(FailedPersonEdit value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(SuccessPersonEdit value)? success,
    TResult? Function(FailedPersonEdit value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(SuccessPersonEdit value)? success,
    TResult Function(FailedPersonEdit value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedPersonEdit implements EditPersonState {
  const factory FailedPersonEdit(final String message) = _$FailedPersonEdit;

  String get message;
  @JsonKey(ignore: true)
  _$$FailedPersonEditCopyWith<_$FailedPersonEdit> get copyWith =>
      throw _privateConstructorUsedError;
}
