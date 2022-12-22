// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpenseEntity _$$_ExpenseEntityFromJson(Map<String, dynamic> json) =>
    _$_ExpenseEntity(
      id: json['_id'] as int?,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      personName: json['personName'] as String?,
      personId: json['personId'] as int?,
      expenseType: $enumDecode(_$ExpenseTypeEnumMap, json['expenseType']),
      isPaid: json['isPaid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ExpenseEntityToJson(_$_ExpenseEntity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'description': instance.description,
      'price': instance.price,
      'personName': instance.personName,
      'personId': instance.personId,
      'expenseType': _$ExpenseTypeEnumMap[instance.expenseType]!,
      'isPaid': instance.isPaid,
    };

const _$ExpenseTypeEnumMap = {
  ExpenseType.debt: 'debt',
  ExpenseType.credit: 'credit',
};
