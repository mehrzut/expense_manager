// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditExpenseEvent {
  ExpenseEntity get expenseEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseEntity expenseEntity) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseEntity expenseEntity)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseEntity expenseEntity)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditExpenseEvent value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditExpenseEvent value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditExpenseEvent value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditExpenseEventCopyWith<EditExpenseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditExpenseEventCopyWith<$Res> {
  factory $EditExpenseEventCopyWith(
          EditExpenseEvent value, $Res Function(EditExpenseEvent) then) =
      _$EditExpenseEventCopyWithImpl<$Res, EditExpenseEvent>;
  @useResult
  $Res call({ExpenseEntity expenseEntity});

  $ExpenseEntityCopyWith<$Res> get expenseEntity;
}

/// @nodoc
class _$EditExpenseEventCopyWithImpl<$Res, $Val extends EditExpenseEvent>
    implements $EditExpenseEventCopyWith<$Res> {
  _$EditExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseEntity = null,
  }) {
    return _then(_value.copyWith(
      expenseEntity: null == expenseEntity
          ? _value.expenseEntity
          : expenseEntity // ignore: cast_nullable_to_non_nullable
              as ExpenseEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpenseEntityCopyWith<$Res> get expenseEntity {
    return $ExpenseEntityCopyWith<$Res>(_value.expenseEntity, (value) {
      return _then(_value.copyWith(expenseEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EditExpenseEventCopyWith<$Res>
    implements $EditExpenseEventCopyWith<$Res> {
  factory _$$_EditExpenseEventCopyWith(
          _$_EditExpenseEvent value, $Res Function(_$_EditExpenseEvent) then) =
      __$$_EditExpenseEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseEntity expenseEntity});

  @override
  $ExpenseEntityCopyWith<$Res> get expenseEntity;
}

/// @nodoc
class __$$_EditExpenseEventCopyWithImpl<$Res>
    extends _$EditExpenseEventCopyWithImpl<$Res, _$_EditExpenseEvent>
    implements _$$_EditExpenseEventCopyWith<$Res> {
  __$$_EditExpenseEventCopyWithImpl(
      _$_EditExpenseEvent _value, $Res Function(_$_EditExpenseEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseEntity = null,
  }) {
    return _then(_$_EditExpenseEvent(
      null == expenseEntity
          ? _value.expenseEntity
          : expenseEntity // ignore: cast_nullable_to_non_nullable
              as ExpenseEntity,
    ));
  }
}

/// @nodoc

class _$_EditExpenseEvent implements _EditExpenseEvent {
  const _$_EditExpenseEvent(this.expenseEntity);

  @override
  final ExpenseEntity expenseEntity;

  @override
  String toString() {
    return 'EditExpenseEvent.edit(expenseEntity: $expenseEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditExpenseEvent &&
            (identical(other.expenseEntity, expenseEntity) ||
                other.expenseEntity == expenseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditExpenseEventCopyWith<_$_EditExpenseEvent> get copyWith =>
      __$$_EditExpenseEventCopyWithImpl<_$_EditExpenseEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseEntity expenseEntity) edit,
  }) {
    return edit(expenseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseEntity expenseEntity)? edit,
  }) {
    return edit?.call(expenseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseEntity expenseEntity)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(expenseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditExpenseEvent value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditExpenseEvent value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditExpenseEvent value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _EditExpenseEvent implements EditExpenseEvent {
  const factory _EditExpenseEvent(final ExpenseEntity expenseEntity) =
      _$_EditExpenseEvent;

  @override
  ExpenseEntity get expenseEntity;
  @override
  @JsonKey(ignore: true)
  _$$_EditExpenseEventCopyWith<_$_EditExpenseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() edited,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? edited,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? edited,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditingExpenseState value) editing,
    required TResult Function(EditedExpenseState value) edited,
    required TResult Function(FailedEditingExpenseState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditingExpenseState value)? editing,
    TResult? Function(EditedExpenseState value)? edited,
    TResult? Function(FailedEditingExpenseState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditingExpenseState value)? editing,
    TResult Function(EditedExpenseState value)? edited,
    TResult Function(FailedEditingExpenseState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditExpenseStateCopyWith<$Res> {
  factory $EditExpenseStateCopyWith(
          EditExpenseState value, $Res Function(EditExpenseState) then) =
      _$EditExpenseStateCopyWithImpl<$Res, EditExpenseState>;
}

/// @nodoc
class _$EditExpenseStateCopyWithImpl<$Res, $Val extends EditExpenseState>
    implements $EditExpenseStateCopyWith<$Res> {
  _$EditExpenseStateCopyWithImpl(this._value, this._then);

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
    extends _$EditExpenseStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EditExpenseState.initial()';
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
    required TResult Function() editing,
    required TResult Function() edited,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? edited,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? edited,
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
    required TResult Function(EditingExpenseState value) editing,
    required TResult Function(EditedExpenseState value) edited,
    required TResult Function(FailedEditingExpenseState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditingExpenseState value)? editing,
    TResult? Function(EditedExpenseState value)? edited,
    TResult? Function(FailedEditingExpenseState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditingExpenseState value)? editing,
    TResult Function(EditedExpenseState value)? edited,
    TResult Function(FailedEditingExpenseState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditExpenseState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$EditingExpenseStateCopyWith<$Res> {
  factory _$$EditingExpenseStateCopyWith(_$EditingExpenseState value,
          $Res Function(_$EditingExpenseState) then) =
      __$$EditingExpenseStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditingExpenseStateCopyWithImpl<$Res>
    extends _$EditExpenseStateCopyWithImpl<$Res, _$EditingExpenseState>
    implements _$$EditingExpenseStateCopyWith<$Res> {
  __$$EditingExpenseStateCopyWithImpl(
      _$EditingExpenseState _value, $Res Function(_$EditingExpenseState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditingExpenseState implements EditingExpenseState {
  const _$EditingExpenseState();

  @override
  String toString() {
    return 'EditExpenseState.editing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditingExpenseState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() edited,
    required TResult Function(String message) failed,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? edited,
    TResult? Function(String message)? failed,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? edited,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditingExpenseState value) editing,
    required TResult Function(EditedExpenseState value) edited,
    required TResult Function(FailedEditingExpenseState value) failed,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditingExpenseState value)? editing,
    TResult? Function(EditedExpenseState value)? edited,
    TResult? Function(FailedEditingExpenseState value)? failed,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditingExpenseState value)? editing,
    TResult Function(EditedExpenseState value)? edited,
    TResult Function(FailedEditingExpenseState value)? failed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class EditingExpenseState implements EditExpenseState {
  const factory EditingExpenseState() = _$EditingExpenseState;
}

/// @nodoc
abstract class _$$EditedExpenseStateCopyWith<$Res> {
  factory _$$EditedExpenseStateCopyWith(_$EditedExpenseState value,
          $Res Function(_$EditedExpenseState) then) =
      __$$EditedExpenseStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditedExpenseStateCopyWithImpl<$Res>
    extends _$EditExpenseStateCopyWithImpl<$Res, _$EditedExpenseState>
    implements _$$EditedExpenseStateCopyWith<$Res> {
  __$$EditedExpenseStateCopyWithImpl(
      _$EditedExpenseState _value, $Res Function(_$EditedExpenseState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditedExpenseState implements EditedExpenseState {
  const _$EditedExpenseState();

  @override
  String toString() {
    return 'EditExpenseState.edited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditedExpenseState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() edited,
    required TResult Function(String message) failed,
  }) {
    return edited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? edited,
    TResult? Function(String message)? failed,
  }) {
    return edited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? edited,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditingExpenseState value) editing,
    required TResult Function(EditedExpenseState value) edited,
    required TResult Function(FailedEditingExpenseState value) failed,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditingExpenseState value)? editing,
    TResult? Function(EditedExpenseState value)? edited,
    TResult? Function(FailedEditingExpenseState value)? failed,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditingExpenseState value)? editing,
    TResult Function(EditedExpenseState value)? edited,
    TResult Function(FailedEditingExpenseState value)? failed,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class EditedExpenseState implements EditExpenseState {
  const factory EditedExpenseState() = _$EditedExpenseState;
}

/// @nodoc
abstract class _$$FailedEditingExpenseStateCopyWith<$Res> {
  factory _$$FailedEditingExpenseStateCopyWith(
          _$FailedEditingExpenseState value,
          $Res Function(_$FailedEditingExpenseState) then) =
      __$$FailedEditingExpenseStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedEditingExpenseStateCopyWithImpl<$Res>
    extends _$EditExpenseStateCopyWithImpl<$Res, _$FailedEditingExpenseState>
    implements _$$FailedEditingExpenseStateCopyWith<$Res> {
  __$$FailedEditingExpenseStateCopyWithImpl(_$FailedEditingExpenseState _value,
      $Res Function(_$FailedEditingExpenseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedEditingExpenseState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedEditingExpenseState implements FailedEditingExpenseState {
  const _$FailedEditingExpenseState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EditExpenseState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedEditingExpenseState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedEditingExpenseStateCopyWith<_$FailedEditingExpenseState>
      get copyWith => __$$FailedEditingExpenseStateCopyWithImpl<
          _$FailedEditingExpenseState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() edited,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? edited,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? edited,
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
    required TResult Function(EditingExpenseState value) editing,
    required TResult Function(EditedExpenseState value) edited,
    required TResult Function(FailedEditingExpenseState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EditingExpenseState value)? editing,
    TResult? Function(EditedExpenseState value)? edited,
    TResult? Function(FailedEditingExpenseState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditingExpenseState value)? editing,
    TResult Function(EditedExpenseState value)? edited,
    TResult Function(FailedEditingExpenseState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedEditingExpenseState implements EditExpenseState {
  const factory FailedEditingExpenseState(final String message) =
      _$FailedEditingExpenseState;

  String get message;
  @JsonKey(ignore: true)
  _$$FailedEditingExpenseStateCopyWith<_$FailedEditingExpenseState>
      get copyWith => throw _privateConstructorUsedError;
}
