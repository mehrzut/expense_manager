import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/expenses/domain/repositories/expense_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetAllExpenses extends UseCase<List<ExpenseEntity>, void> {
  final ExpenseRepository repository;
  GetAllExpenses(this.repository);

  @override
  Future<List<ExpenseEntity>> call(void params) {
    return repository.getAllExpenses();
  }
}
