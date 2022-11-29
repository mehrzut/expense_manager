import 'package:expense_manager/features/users/domain/entities/user_entity.dart';


abstract class UserDataSource {
  Future<List<UserEntity>> getAllUsers();

  Future<void> createUser(UserEntity user);

  Future<void> deleteUser(UserEntity user);
}
