// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expense_input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpenseInputState {
  String? get title => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get personName => throw _privateConstructorUsedError;
  int? get personId => throw _privateConstructorUsedError;
  ExpenseType? get expenseType => throw _privateConstructorUsedError;
  bool? get isPaid => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseInputStateCopyWith<ExpenseInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseInputStateCopyWith<$Res> {
  factory $ExpenseInputStateCopyWith(
          ExpenseInputState value, $Res Function(ExpenseInputState) then) =
      _$ExpenseInputStateCopyWithImpl<$Res, ExpenseInputState>;
  @useResult
  $Res call(
      {String? title,
      double? amount,
      String? currency,
      String? personName,
      int? personId,
      ExpenseType? expenseType,
      bool? isPaid,
      DateTime? date});
}

/// @nodoc
class _$ExpenseInputStateCopyWithImpl<$Res, $Val extends ExpenseInputState>
    implements $ExpenseInputStateCopyWith<$Res> {
  _$ExpenseInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? personName = freezed,
    Object? personId = freezed,
    Object? expenseType = freezed,
    Object? isPaid = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      personName: freezed == personName
          ? _value.personName
          : personName // ignore: cast_nullable_to_non_nullable
              as String?,
      personId: freezed == personId
          ? _value.personId
          : personId // ignore: cast_nullable_to_non_nullable
              as int?,
      expenseType: freezed == expenseType
          ? _value.expenseType
          : expenseType // ignore: cast_nullable_to_non_nullable
              as ExpenseType?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseInputStateCopyWith<$Res>
    implements $ExpenseInputStateCopyWith<$Res> {
  factory _$$_ExpenseInputStateCopyWith(_$_ExpenseInputState value,
          $Res Function(_$_ExpenseInputState) then) =
      __$$_ExpenseInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      double? amount,
      String? currency,
      String? personName,
      int? personId,
      ExpenseType? expenseType,
      bool? isPaid,
      DateTime? date});
}

/// @nodoc
class __$$_ExpenseInputStateCopyWithImpl<$Res>
    extends _$ExpenseInputStateCopyWithImpl<$Res, _$_ExpenseInputState>
    implements _$$_ExpenseInputStateCopyWith<$Res> {
  __$$_ExpenseInputStateCopyWithImpl(
      _$_ExpenseInputState _value, $Res Function(_$_ExpenseInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? personName = freezed,
    Object? personId = freezed,
    Object? expenseType = freezed,
    Object? isPaid = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ExpenseInputState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      personName: freezed == personName
          ? _value.personName
          : personName // ignore: cast_nullable_to_non_nullable
              as String?,
      personId: freezed == personId
          ? _value.personId
          : personId // ignore: cast_nullable_to_non_nullable
              as int?,
      expenseType: freezed == expenseType
          ? _value.expenseType
          : expenseType // ignore: cast_nullable_to_non_nullable
              as ExpenseType?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ExpenseInputState implements _ExpenseInputState {
  const _$_ExpenseInputState(
      {required this.title,
      required this.amount,
      required this.currency,
      required this.personName,
      required this.personId,
      required this.expenseType,
      required this.isPaid,
      required this.date});

  @override
  final String? title;
  @override
  final double? amount;
  @override
  final String? currency;
  @override
  final String? personName;
  @override
  final int? personId;
  @override
  final ExpenseType? expenseType;
  @override
  final bool? isPaid;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ExpenseInputState(title: $title, amount: $amount, currency: $currency, personName: $personName, personId: $personId, expenseType: $expenseType, isPaid: $isPaid, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseInputState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.personName, personName) ||
                other.personName == personName) &&
            (identical(other.personId, personId) ||
                other.personId == personId) &&
            (identical(other.expenseType, expenseType) ||
                other.expenseType == expenseType) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, amount, currency,
      personName, personId, expenseType, isPaid, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseInputStateCopyWith<_$_ExpenseInputState> get copyWith =>
      __$$_ExpenseInputStateCopyWithImpl<_$_ExpenseInputState>(
          this, _$identity);
}

abstract class _ExpenseInputState implements ExpenseInputState {
  const factory _ExpenseInputState(
      {required final String? title,
      required final double? amount,
      required final String? currency,
      required final String? personName,
      required final int? personId,
      required final ExpenseType? expenseType,
      required final bool? isPaid,
      required final DateTime? date}) = _$_ExpenseInputState;

  @override
  String? get title;
  @override
  double? get amount;
  @override
  String? get currency;
  @override
  String? get personName;
  @override
  int? get personId;
  @override
  ExpenseType? get expenseType;
  @override
  bool? get isPaid;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseInputStateCopyWith<_$_ExpenseInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
