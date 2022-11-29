import 'package:expense_manager/core/database/database_helper.dart';
import 'package:expense_manager/features/users/data/datasources/user_data_source.dart';
import 'package:expense_manager/features/users/domain/entities/user_entity.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: UserDataSource)
class UserDataSourceImpl implements UserDataSource {
  final DataBaseHelper dataBaseHelper;

  UserDataSourceImpl(this.dataBaseHelper);
  
  @override
  Future<List<UserEntity>> getAllUsers() {
    return dataBaseHelper.getAllUsers();
  }

  @override
  Future<void> createUser(UserEntity user) {
    return dataBaseHelper.insertUser(user);
  }

  @override
  Future<void> deleteUser(UserEntity user) {
    return dataBaseHelper.deleteUser(user);
  }
}
