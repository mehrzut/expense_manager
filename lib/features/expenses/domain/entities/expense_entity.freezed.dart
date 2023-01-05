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
  @JsonKey(name: '_id')
  int? get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get personName => throw _privateConstructorUsedError;
  int? get personId => throw _privateConstructorUsedError;
  ExpenseType get expenseType => throw _privateConstructorUsedError;
  int get isPaid => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') int? id,
      String description,
      double price,
      @JsonKey(ignore: true) String? personName,
      int? personId,
      ExpenseType expenseType,
      int isPaid,
      DateTime? date});
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
    Object? personName = freezed,
    Object? personId = freezed,
    Object? expenseType = null,
    Object? isPaid = null,
    Object? date = freezed,
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
      personName: freezed == personName
          ? _value.personName
          : personName // ignore: cast_nullable_to_non_nullable
              as String?,
      personId: freezed == personId
          ? _value.personId
          : personId // ignore: cast_nullable_to_non_nullable
              as int?,
      expenseType: null == expenseType
          ? _value.expenseType
          : expenseType // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as int,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {@JsonKey(name: '_id') int? id,
      String description,
      double price,
      @JsonKey(ignore: true) String? personName,
      int? personId,
      ExpenseType expenseType,
      int isPaid,
      DateTime? date});
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
    Object? personName = freezed,
    Object? personId = freezed,
    Object? expenseType = null,
    Object? isPaid = null,
    Object? date = freezed,
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
      personName: freezed == personName
          ? _value.personName
          : personName // ignore: cast_nullable_to_non_nullable
              as String?,
      personId: freezed == personId
          ? _value.personId
          : personId // ignore: cast_nullable_to_non_nullable
              as int?,
      expenseType: null == expenseType
          ? _value.expenseType
          : expenseType // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as int,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpenseEntity extends _ExpenseEntity {
  _$_ExpenseEntity(
      {@JsonKey(name: '_id') this.id,
      required this.description,
      required this.price,
      @JsonKey(ignore: true) this.personName,
      this.personId,
      required this.expenseType,
      this.isPaid = 0,
      this.date})
      : super._();

  factory _$_ExpenseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseEntityFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int? id;
  @override
  final String description;
  @override
  final double price;
  @override
  @JsonKey(ignore: true)
  final String? personName;
  @override
  final int? personId;
  @override
  final ExpenseType expenseType;
  @override
  @JsonKey()
  final int isPaid;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ExpenseEntity(id: $id, description: $description, price: $price, personName: $personName, personId: $personId, expenseType: $expenseType, isPaid: $isPaid, date: $date)';
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
            (identical(other.personName, personName) ||
                other.personName == personName) &&
            (identical(other.personId, personId) ||
                other.personId == personId) &&
            (identical(other.expenseType, expenseType) ||
                other.expenseType == expenseType) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, price,
      personName, personId, expenseType, isPaid, date);

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

abstract class _ExpenseEntity extends ExpenseEntity {
  factory _ExpenseEntity(
      {@JsonKey(name: '_id') final int? id,
      required final String description,
      required final double price,
      @JsonKey(ignore: true) final String? personName,
      final int? personId,
      required final ExpenseType expenseType,
      final int isPaid,
      final DateTime? date}) = _$_ExpenseEntity;
  _ExpenseEntity._() : super._();

  factory _ExpenseEntity.fromJson(Map<String, dynamic> json) =
      _$_ExpenseEntity.fromJson;

  @override
  @JsonKey(name: '_id')
  int? get id;
  @override
  String get description;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  String? get personName;
  @override
  int? get personId;
  @override
  ExpenseType get expenseType;
  @override
  int get isPaid;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseEntityCopyWith<_$_ExpenseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
