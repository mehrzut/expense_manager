// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateExpenseEvent {
  ExpenseEntity get expenseEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseEntity expenseEntity) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseEntity expenseEntity)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseEntity expenseEntity)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateExpense value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateExpense value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateExpense value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateExpenseEventCopyWith<CreateExpenseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExpenseEventCopyWith<$Res> {
  factory $CreateExpenseEventCopyWith(
          CreateExpenseEvent value, $Res Function(CreateExpenseEvent) then) =
      _$CreateExpenseEventCopyWithImpl<$Res, CreateExpenseEvent>;
  @useResult
  $Res call({ExpenseEntity expenseEntity});

  $ExpenseEntityCopyWith<$Res> get expenseEntity;
}

/// @nodoc
class _$CreateExpenseEventCopyWithImpl<$Res, $Val extends CreateExpenseEvent>
    implements $CreateExpenseEventCopyWith<$Res> {
  _$CreateExpenseEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateExpenseCopyWith<$Res>
    implements $CreateExpenseEventCopyWith<$Res> {
  factory _$$_CreateExpenseCopyWith(
          _$_CreateExpense value, $Res Function(_$_CreateExpense) then) =
      __$$_CreateExpenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseEntity expenseEntity});

  @override
  $ExpenseEntityCopyWith<$Res> get expenseEntity;
}

/// @nodoc
class __$$_CreateExpenseCopyWithImpl<$Res>
    extends _$CreateExpenseEventCopyWithImpl<$Res, _$_CreateExpense>
    implements _$$_CreateExpenseCopyWith<$Res> {
  __$$_CreateExpenseCopyWithImpl(
      _$_CreateExpense _value, $Res Function(_$_CreateExpense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseEntity = null,
  }) {
    return _then(_$_CreateExpense(
      null == expenseEntity
          ? _value.expenseEntity
          : expenseEntity // ignore: cast_nullable_to_non_nullable
              as ExpenseEntity,
    ));
  }
}

/// @nodoc

class _$_CreateExpense implements _CreateExpense {
  const _$_CreateExpense(this.expenseEntity);

  @override
  final ExpenseEntity expenseEntity;

  @override
  String toString() {
    return 'CreateExpenseEvent.create(expenseEntity: $expenseEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateExpense &&
            (identical(other.expenseEntity, expenseEntity) ||
                other.expenseEntity == expenseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateExpenseCopyWith<_$_CreateExpense> get copyWith =>
      __$$_CreateExpenseCopyWithImpl<_$_CreateExpense>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseEntity expenseEntity) create,
  }) {
    return create(expenseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseEntity expenseEntity)? create,
  }) {
    return create?.call(expenseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseEntity expenseEntity)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(expenseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateExpense value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateExpense value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateExpense value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreateExpense implements CreateExpenseEvent {
  const factory _CreateExpense(final ExpenseEntity expenseEntity) =
      _$_CreateExpense;

  @override
  ExpenseEntity get expenseEntity;
  @override
  @JsonKey(ignore: true)
  _$$_CreateExpenseCopyWith<_$_CreateExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreatingExpense value) loading,
    required TResult Function(CreatedExpense value) success,
    required TResult Function(FailedCreatingExpense value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreatingExpense value)? loading,
    TResult? Function(CreatedExpense value)? success,
    TResult? Function(FailedCreatingExpense value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreatingExpense value)? loading,
    TResult Function(CreatedExpense value)? success,
    TResult Function(FailedCreatingExpense value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExpenseStateCopyWith<$Res> {
  factory $CreateExpenseStateCopyWith(
          CreateExpenseState value, $Res Function(CreateExpenseState) then) =
      _$CreateExpenseStateCopyWithImpl<$Res, CreateExpenseState>;
}

/// @nodoc
class _$CreateExpenseStateCopyWithImpl<$Res, $Val extends CreateExpenseState>
    implements $CreateExpenseStateCopyWith<$Res> {
  _$CreateExpenseStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateExpenseStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreateExpenseState.initial()';
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
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(CreatingExpense value) loading,
    required TResult Function(CreatedExpense value) success,
    required TResult Function(FailedCreatingExpense value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreatingExpense value)? loading,
    TResult? Function(CreatedExpense value)? success,
    TResult? Function(FailedCreatingExpense value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreatingExpense value)? loading,
    TResult Function(CreatedExpense value)? success,
    TResult Function(FailedCreatingExpense value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateExpenseState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$CreatingExpenseCopyWith<$Res> {
  factory _$$CreatingExpenseCopyWith(
          _$CreatingExpense value, $Res Function(_$CreatingExpense) then) =
      __$$CreatingExpenseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatingExpenseCopyWithImpl<$Res>
    extends _$CreateExpenseStateCopyWithImpl<$Res, _$CreatingExpense>
    implements _$$CreatingExpenseCopyWith<$Res> {
  __$$CreatingExpenseCopyWithImpl(
      _$CreatingExpense _value, $Res Function(_$CreatingExpense) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatingExpense implements CreatingExpense {
  const _$CreatingExpense();

  @override
  String toString() {
    return 'CreateExpenseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatingExpense);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CreatingExpense value) loading,
    required TResult Function(CreatedExpense value) success,
    required TResult Function(FailedCreatingExpense value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreatingExpense value)? loading,
    TResult? Function(CreatedExpense value)? success,
    TResult? Function(FailedCreatingExpense value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreatingExpense value)? loading,
    TResult Function(CreatedExpense value)? success,
    TResult Function(FailedCreatingExpense value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreatingExpense implements CreateExpenseState {
  const factory CreatingExpense() = _$CreatingExpense;
}

/// @nodoc
abstract class _$$CreatedExpenseCopyWith<$Res> {
  factory _$$CreatedExpenseCopyWith(
          _$CreatedExpense value, $Res Function(_$CreatedExpense) then) =
      __$$CreatedExpenseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatedExpenseCopyWithImpl<$Res>
    extends _$CreateExpenseStateCopyWithImpl<$Res, _$CreatedExpense>
    implements _$$CreatedExpenseCopyWith<$Res> {
  __$$CreatedExpenseCopyWithImpl(
      _$CreatedExpense _value, $Res Function(_$CreatedExpense) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatedExpense implements CreatedExpense {
  const _$CreatedExpense();

  @override
  String toString() {
    return 'CreateExpenseState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatedExpense);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(CreatingExpense value) loading,
    required TResult Function(CreatedExpense value) success,
    required TResult Function(FailedCreatingExpense value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreatingExpense value)? loading,
    TResult? Function(CreatedExpense value)? success,
    TResult? Function(FailedCreatingExpense value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreatingExpense value)? loading,
    TResult Function(CreatedExpense value)? success,
    TResult Function(FailedCreatingExpense value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreatedExpense implements CreateExpenseState {
  const factory CreatedExpense() = _$CreatedExpense;
}

/// @nodoc
abstract class _$$FailedCreatingExpenseCopyWith<$Res> {
  factory _$$FailedCreatingExpenseCopyWith(_$FailedCreatingExpense value,
          $Res Function(_$FailedCreatingExpense) then) =
      __$$FailedCreatingExpenseCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedCreatingExpenseCopyWithImpl<$Res>
    extends _$CreateExpenseStateCopyWithImpl<$Res, _$FailedCreatingExpense>
    implements _$$FailedCreatingExpenseCopyWith<$Res> {
  __$$FailedCreatingExpenseCopyWithImpl(_$FailedCreatingExpense _value,
      $Res Function(_$FailedCreatingExpense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedCreatingExpense(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedCreatingExpense implements FailedCreatingExpense {
  const _$FailedCreatingExpense(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateExpenseState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedCreatingExpense &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedCreatingExpenseCopyWith<_$FailedCreatingExpense> get copyWith =>
      __$$FailedCreatingExpenseCopyWithImpl<_$FailedCreatingExpense>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(CreatingExpense value) loading,
    required TResult Function(CreatedExpense value) success,
    required TResult Function(FailedCreatingExpense value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CreatingExpense value)? loading,
    TResult? Function(CreatedExpense value)? success,
    TResult? Function(FailedCreatingExpense value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CreatingExpense value)? loading,
    TResult Function(CreatedExpense value)? success,
    TResult Function(FailedCreatingExpense value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedCreatingExpense implements CreateExpenseState {
  const factory FailedCreatingExpense(final String message) =
      _$FailedCreatingExpense;

  String get message;
  @JsonKey(ignore: true)
  _$$FailedCreatingExpenseCopyWith<_$FailedCreatingExpense> get copyWith =>
      throw _privateConstructorUsedError;
}
