import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/domain/repositories/person_repository.dart';

class DeletePerson extends UseCase<void, PersonEntity> {
  final PersonRepository repository;

  DeletePerson(this.repository);

  @override
  Future<void> call(PersonEntity params) {
    return repository.deletePerson(params);
  }
}
