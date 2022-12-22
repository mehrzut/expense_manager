// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonEntity _$$_PersonEntityFromJson(Map<String, dynamic> json) =>
    _$_PersonEntity(
      id: json['_id'] as int?,
      displayName: json['displayName'] as String,
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      cardNumber: json['cardNumber'] as String?,
    );

Map<String, dynamic> _$$_PersonEntityToJson(_$_PersonEntity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'displayName': instance.displayName,
      'totalAmount': instance.totalAmount,
      'cardNumber': instance.cardNumber,
    };
