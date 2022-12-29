import 'package:expense_manager/features/people/data/datasources/person_data_source.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PersonRepository)
class PersonRepositoryImpl implements PersonRepository {
  final PersonDataSource dataSource;

  PersonRepositoryImpl(this.dataSource);
  @override
  Future<List<PersonEntity>> getAllPeople() {
    return dataSource.getAllPeople();
  }

  @override
  Future<void> createPerson(PersonEntity person) {
    return dataSource.createPerson(person);
  }

  @override
  Future<void> deletePerson(PersonEntity person) {
    return dataSource.deletePerson(person);
  }

  @override
  Future<void> editPerson(PersonEntity person) {
    return dataSource.updatePerson(person);
  }
}
