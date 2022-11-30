import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_entity.freezed.dart';
part 'person_entity.g.dart';

@freezed
abstract class PersonEntity with _$PersonEntity {
  factory PersonEntity({
    int? id,
    required String displayName,
  }) = _PersonEntity;

  factory PersonEntity.fromJson(Map<String, dynamic> json) =>
      _$PersonEntityFromJson(json);
}
