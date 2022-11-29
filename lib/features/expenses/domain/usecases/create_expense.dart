import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/expenses/domain/repositories/expense_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CreateExpense extends UseCase<void, ExpenseEntity> {
  final ExpenseRepository repository;

  CreateExpense(this.repository);

  @override
  Future<void> call(ExpenseEntity params) {
    return repository.createExpense(params);
  }
}
