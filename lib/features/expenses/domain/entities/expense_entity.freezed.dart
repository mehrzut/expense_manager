// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expense_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpenseEntity _$ExpenseEntityFromJson(Map<String, dynamic> json) {
  return _ExpenseEntity.fromJson(json);
}

/// @nodoc
mixin _$ExpenseEntity {
  int? get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get otherEnd => throw _privateConstructorUsedError;
  ExpenseType get expenseType => throw _privateConstructorUsedError;
  int get isPaid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseEntityCopyWith<ExpenseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEntityCopyWith<$Res> {
  factory $ExpenseEntityCopyWith(
          ExpenseEntity value, $Res Function(ExpenseEntity) then) =
      _$ExpenseEntityCopyWithImpl<$Res, ExpenseEntity>;
  @useResult
  $Res call(
      {int? id,
      String description,
      double price,
      String currency,
      String otherEnd,
      ExpenseType expenseType,
      int isPaid});
}

/// @nodoc
class _$ExpenseEntityCopyWithImpl<$Res, $Val extends ExpenseEntity>
    implements $ExpenseEntityCopyWith<$Res> {
  _$ExpenseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = null,
    Object? price = null,
    Object? currency = null,
    Object? otherEnd = null,
    Object? expenseType = null,
    Object? isPaid = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      otherEnd: null == otherEnd
          ? _value.otherEnd
          : otherEnd // ignore: cast_nullable_to_non_nullable
              as String,
      expenseType: null == expenseType
          ? _value.expenseType
          : expenseType // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseEntityCopyWith<$Res>
    implements $ExpenseEntityCopyWith<$Res> {
  factory _$$_ExpenseEntityCopyWith(
          _$_ExpenseEntity value, $Res Function(_$_ExpenseEntity) then) =
      __$$_ExpenseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String description,
      double price,
      String currency,
      String otherEnd,
      ExpenseType expenseType,
      int isPaid});
}

/// @nodoc
class __$$_ExpenseEntityCopyWithImpl<$Res>
    extends _$ExpenseEntityCopyWithImpl<$Res, _$_ExpenseEntity>
    implements _$$_ExpenseEntityCopyWith<$Res> {
  __$$_ExpenseEntityCopyWithImpl(
      _$_ExpenseEntity _value, $Res Function(_$_ExpenseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = null,
    Object? price = null,
    Object? currency = null,
    Object? otherEnd = null,
    Object? expenseType = null,
    Object? isPaid = null,
  }) {
    return _then(_$_ExpenseEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      otherEnd: null == otherEnd
          ? _value.otherEnd
          : otherEnd // ignore: cast_nullable_to_non_nullable
              as String,
      expenseType: null == expenseType
          ? _value.expenseType
          : expenseType // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpenseEntity implements _ExpenseEntity {
  _$_ExpenseEntity(
      {this.id,
      required this.description,
      required this.price,
      required this.currency,
      required this.otherEnd,
      required this.expenseType,
      this.isPaid = 0});

  factory _$_ExpenseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseEntityFromJson(json);

  @override
  final int? id;
  @override
  final String description;
  @override
  final double price;
  @override
  final String currency;
  @override
  final String otherEnd;
  @override
  final ExpenseType expenseType;
  @override
  @JsonKey()
  final int isPaid;

  @override
  String toString() {
    return 'ExpenseEntity(id: $id, description: $description, price: $price, currency: $currency, otherEnd: $otherEnd, expenseType: $expenseType, isPaid: $isPaid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpenseEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.otherEnd, otherEnd) ||
                other.otherEnd == otherEnd) &&
            (identical(other.expenseType, expenseType) ||
                other.expenseType == expenseType) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, price, currency,
      otherEnd, expenseType, isPaid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseEntityCopyWith<_$_ExpenseEntity> get copyWith =>
      __$$_ExpenseEntityCopyWithImpl<_$_ExpenseEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseEntityToJson(
      this,
    );
  }
}

abstract class _ExpenseEntity implements ExpenseEntity {
  factory _ExpenseEntity(
      {final int? id,
      required final String description,
      required final double price,
      required final String currency,
      required final String otherEnd,
      required final ExpenseType expenseType,
      final int isPaid}) = _$_ExpenseEntity;

  factory _ExpenseEntity.fromJson(Map<String, dynamic> json) =
      _$_ExpenseEntity.fromJson;

  @override
  int? get id;
  @override
  String get description;
  @override
  double get price;
  @override
  String get currency;
  @override
  String get otherEnd;
  @override
  ExpenseType get expenseType;
  @override
  int get isPaid;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseEntityCopyWith<_$_ExpenseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
