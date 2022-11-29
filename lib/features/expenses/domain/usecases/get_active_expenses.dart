import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/expenses/domain/repositories/expense_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetActiveExpenses extends UseCase<List<ExpenseEntity>, void> {
  final ExpenseRepository repository;
  GetActiveExpenses(this.repository);

  @override
  Future<List<ExpenseEntity>> call(void params) {
    return repository.getActiveExpenses();
  }
}
