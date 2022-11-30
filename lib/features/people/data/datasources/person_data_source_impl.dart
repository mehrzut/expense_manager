import 'package:expense_manager/core/database/database_helper.dart';
import 'package:expense_manager/features/people/data/datasources/person_data_source.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PersonDataSource)
class PersonDataSourceImpl implements PersonDataSource {
  final DataBaseHelper dataBaseHelper;

  PersonDataSourceImpl(this.dataBaseHelper);

  @override
  Future<List<PersonEntity>> getAllPeople() {
    return dataBaseHelper.getAllPeople();
  }

  @override
  Future<void> createPerson(PersonEntity person) {
    return dataBaseHelper.insertPerson(person);
  }

  @override
  Future<void> deletePerson(PersonEntity person) {
    return dataBaseHelper.deletePerson(person);
  }
}
