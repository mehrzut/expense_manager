import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';

@singleton
class EditPerson extends UseCase<void, PersonEntity> {
  final PersonRepository repository;

  EditPerson(this.repository);

  @override
  Future<void> call(PersonEntity params) {
    return repository.editPerson(params);
  }
}
