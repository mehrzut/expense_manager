import 'package:expense_manager/core/usecase/usecase.dart';
import 'package:expense_manager/features/users/domain/entities/user_entity.dart';
import 'package:expense_manager/features/users/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetAllUsers extends UseCase<List<UserEntity>, void> {
  final UserRepository repository;

  GetAllUsers(this.repository);

  @override
  Future<List<UserEntity>> call(void params) {
    return repository.getAllUsers();
  }
}
