import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CreatePerson extends UseCase<void, PersonEntity> {
  final PersonRepository repository;

  CreatePerson(this.repository);

  @override
  Future<void> call(PersonEntity params) {
    return repository.createPerson(params);
  }
}
