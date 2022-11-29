import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/users/domain/entities/user_entity.dart';
import 'package:expense_manager/features/users/domain/repositories/user_repository.dart';

class DeleteUser extends UseCase<void, UserEntity> {
  final UserRepository repository;

  DeleteUser(this.repository);

  @override
  Future<void> call(UserEntity params) {
    return repository.deleteUser(params);
  }
}
