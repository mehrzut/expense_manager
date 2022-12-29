import 'package:expense_manager/features/people/domain/entities/person_entity.dart';

abstract class PersonRepository {
  Future<List<PersonEntity>> getAllPeople();

  Future<void> createPerson(PersonEntity person);

  Future<void> deletePerson(PersonEntity person);

  Future<void> editPerson(PersonEntity person);
}
