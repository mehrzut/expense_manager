import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/enums.dart';

part 'expense_entity.freezed.dart';
part 'expense_entity.g.dart';

@freezed
abstract class ExpenseEntity with _$ExpenseEntity {
  ExpenseEntity._();
  factory ExpenseEntity({
    @JsonKey(name: '_id') int? id,
    required String description,
    required double price,
    @JsonKey(ignore: true) String? personName,
    int? personId,
    required ExpenseType expenseType,
    @Default(0) int isPaid,
    DateTime? date,
  }) = _ExpenseEntity;

  factory ExpenseEntity.fromJson(Map<String, dynamic> json) =>
      _$ExpenseEntityFromJson(json);

  Map<String, dynamic> toJsonWithoutNull() {
    final json = toJson();
    json.removeWhere(
      (key, value) => value == null,
    );
    return json;
  }
}
