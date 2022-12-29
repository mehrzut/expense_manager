// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonEntity _$PersonEntityFromJson(Map<String, dynamic> json) {
  return _PersonEntity.fromJson(json);
}

/// @nodoc
mixin _$PersonEntity {
  @JsonKey(name: '_id')
  int? get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  double? get totalAmount => throw _privateConstructorUsedError;
  String? get cardNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonEntityCopyWith<PersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonEntityCopyWith<$Res> {
  factory $PersonEntityCopyWith(
          PersonEntity value, $Res Function(PersonEntity) then) =
      _$PersonEntityCopyWithImpl<$Res, PersonEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int? id,
      String displayName,
      @JsonKey(ignore: true) double? totalAmount,
      String? cardNumber});
}

/// @nodoc
class _$PersonEntityCopyWithImpl<$Res, $Val extends PersonEntity>
    implements $PersonEntityCopyWith<$Res> {
  _$PersonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = null,
    Object? totalAmount = freezed,
    Object? cardNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonEntityCopyWith<$Res>
    implements $PersonEntityCopyWith<$Res> {
  factory _$$_PersonEntityCopyWith(
          _$_PersonEntity value, $Res Function(_$_PersonEntity) then) =
      __$$_PersonEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int? id,
      String displayName,
      @JsonKey(ignore: true) double? totalAmount,
      String? cardNumber});
}

/// @nodoc
class __$$_PersonEntityCopyWithImpl<$Res>
    extends _$PersonEntityCopyWithImpl<$Res, _$_PersonEntity>
    implements _$$_PersonEntityCopyWith<$Res> {
  __$$_PersonEntityCopyWithImpl(
      _$_PersonEntity _value, $Res Function(_$_PersonEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = null,
    Object? totalAmount = freezed,
    Object? cardNumber = freezed,
  }) {
    return _then(_$_PersonEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonEntity extends _PersonEntity {
  _$_PersonEntity(
      {@JsonKey(name: '_id') this.id,
      required this.displayName,
      @JsonKey(ignore: true) this.totalAmount,
      this.cardNumber})
      : super._();

  factory _$_PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PersonEntityFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int? id;
  @override
  final String displayName;
  @override
  @JsonKey(ignore: true)
  final double? totalAmount;
  @override
  final String? cardNumber;

  @override
  String toString() {
    return 'PersonEntity(id: $id, displayName: $displayName, totalAmount: $totalAmount, cardNumber: $cardNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, displayName, totalAmount, cardNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonEntityCopyWith<_$_PersonEntity> get copyWith =>
      __$$_PersonEntityCopyWithImpl<_$_PersonEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonEntityToJson(
      this,
    );
  }
}

abstract class _PersonEntity extends PersonEntity {
  factory _PersonEntity(
      {@JsonKey(name: '_id') final int? id,
      required final String displayName,
      @JsonKey(ignore: true) final double? totalAmount,
      final String? cardNumber}) = _$_PersonEntity;
  _PersonEntity._() : super._();

  factory _PersonEntity.fromJson(Map<String, dynamic> json) =
      _$_PersonEntity.fromJson;

  @override
  @JsonKey(name: '_id')
  int? get id;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  double? get totalAmount;
  @override
  String? get cardNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PersonEntityCopyWith<_$_PersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
