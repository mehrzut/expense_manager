import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/users/domain/entities/user_entity.dart';
import 'package:expense_manager/features/users/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CreateUser extends UseCase<void, UserEntity> {
  final UserRepository repository;

  CreateUser(this.repository);

  @override
  Future<void> call(UserEntity params) {
    return repository.createUser(params);
  }
}
