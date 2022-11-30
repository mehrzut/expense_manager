import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetAllPeople extends UseCase<List<PersonEntity>, void> {
  final PersonRepository repository;

  GetAllPeople(this.repository);

  @override
  Future<List<PersonEntity>> call(void params) {
    return repository.getAllPeople();
  }
}
