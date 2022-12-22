import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/expenses/domain/repositories/expense_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetPersonExpenses extends UseCase<List<ExpenseEntity>, int> {
  final ExpenseRepository repository;
  GetPersonExpenses(this.repository);

  @override
  Future<List<ExpenseEntity>> call(int params) {
    return repository.getPersonExpenses(params);
  }
}
