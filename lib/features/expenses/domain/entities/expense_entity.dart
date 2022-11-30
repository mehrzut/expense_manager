import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/enums.dart';

part 'expense_entity.freezed.dart';
part 'expense_entity.g.dart';

@freezed
abstract class ExpenseEntity with _$ExpenseEntity {
  factory ExpenseEntity({
    int? id,
    required String description,
    required double price,
    required String currency,
    String? otherEnd,
    required ExpenseType expenseType,
    @Default(0)
    int isPaid
  }) = _ExpenseEntity;

  factory ExpenseEntity.fromJson(Map<String, dynamic> json) =>
      _$ExpenseEntityFromJson(json);
}
