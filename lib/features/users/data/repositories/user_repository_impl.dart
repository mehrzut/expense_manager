import 'package:expense_manager/features/users/data/datasources/user_data_source.dart';
import 'package:expense_manager/features/users/domain/entities/user_entity.dart';
import 'package:expense_manager/features/users/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserDataSource dataSource;

  UserRepositoryImpl(this.dataSource);
  @override
  Future<List<UserEntity>> getAllUsers() {
    return dataSource.getAllUsers();
  }

  @override
  Future<void> createUser(UserEntity user) {
    return dataSource.createUser(user);
  }

  @override
  Future<void> deleteUser(UserEntity user) {
    return dataSource.deleteUser(user);
  }
}
