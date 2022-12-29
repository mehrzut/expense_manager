import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:injectable/injectable.dart';

import '../repositories/expense_repository.dart';

@singleton
class UpdateExpense extends UseCase<void, ExpenseEntity> {
  final ExpenseRepository repository;

  UpdateExpense(this.repository);
  @override
  Future<void> call(ExpenseEntity params) {
    return repository.updateExpense(params);
  }
}
