import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_entity.freezed.dart';
part 'person_entity.g.dart';

@freezed
abstract class PersonEntity with _$PersonEntity {
  PersonEntity._();
  factory PersonEntity({
    @JsonKey(name: '_id') int? id,
    required String displayName,
    @JsonKey(ignore: true) double? totalAmount,
    String? cardNumber,
  }) = _PersonEntity;

  factory PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$PersonEntityFromJson(json);

  Map<String, dynamic> toJsonWithoutNull() {
    final json = toJson();
    json.removeWhere(
      (key, value) => value == null,
    );
    return json;
  }
}
