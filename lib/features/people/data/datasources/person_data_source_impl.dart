import 'package:expense_manager/core/database/database_helper.dart';
import 'package:expense_manager/core/enums/enums.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/people/data/datasources/person_data_source.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PersonDataSource)
class PersonDataSourceImpl implements PersonDataSource {
  final DataBaseHelper dataBaseHelper;

  PersonDataSourceImpl(this.dataBaseHelper);

  @override
  Future<List<PersonEntity>> getAllPeople() async {
    final expenses = await dataBaseHelper.getAllExpenses();
    List<PersonEntity> people = await dataBaseHelper.getAllPeople();
    return people
        .map((e) => e.copyWith(totalAmount: calculateAmount(e.id, expenses)))
        .toList();
  }

  @override
  Future<void> createPerson(PersonEntity person) {
    return dataBaseHelper.insertPerson(person);
  }

  @override
  Future<void> deletePerson(PersonEntity person) {
    return dataBaseHelper.deletePerson(person);
  }

  calculateAmount(int? id, List<ExpenseEntity> allExpenses) {
    if (id == null) return 0;
    double total = 0;
    final expenses =
        allExpenses.where((element) => element.personId == id).toList();
    for (ExpenseEntity expense in expenses) {
      if (expense.isPaid == 0) {
        if (expense.expenseType == ExpenseType.credit) {
          total += expense.price;
        } else {
          total -= expense.price;
        }
      }
    }
    return total;
  }

  @override
  Future<void> updatePerson(PersonEntity person) {
    return dataBaseHelper.updatePerson(person);
  }
}
