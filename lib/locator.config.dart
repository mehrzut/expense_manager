// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:expense_manager/core/database/database_helper.dart' as _i3;
import 'package:expense_manager/features/expenses/data/datasources/expense_data_source.dart'
    as _i4;
import 'package:expense_manager/features/expenses/data/datasources/expense_data_source_impl.dart'
    as _i5;
import 'package:expense_manager/features/expenses/data/repositories/expense_repository_impl.dart'
    as _i7;
import 'package:expense_manager/features/expenses/domain/repositories/expense_repository.dart'
    as _i6;
import 'package:expense_manager/features/expenses/domain/usecases/create_expense.dart'
    as _i14;
import 'package:expense_manager/features/expenses/domain/usecases/get_active_expenses.dart'
    as _i8;
import 'package:expense_manager/features/expenses/domain/usecases/update_expense.dart'
    as _i13;
import 'package:expense_manager/features/expenses/presentation/bloc/expense_bloc.dart'
    as _i17;
import 'package:expense_manager/features/people/data/datasources/person_data_source.dart'
    as _i9;
import 'package:expense_manager/features/people/data/datasources/person_data_source_impl.dart'
    as _i10;
import 'package:expense_manager/features/people/data/repositories/person_repository_impl.dart'
    as _i12;
import 'package:expense_manager/features/people/domain/repositories/person_repository.dart'
    as _i11;
import 'package:expense_manager/features/people/domain/usecases/create_person.dart'
    as _i15;
import 'package:expense_manager/features/people/domain/usecases/get_all_people.dart'
    as _i18;
import 'package:expense_manager/features/people/presentation/bloc/create_person_bloc.dart'
    as _i16;
import 'package:expense_manager/features/people/presentation/bloc/people_bloc.dart'
    as _i19;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.lazySingletonAsync<_i3.DataBaseHelper>(
      () => _i3.DataBaseHelper.init(),
      preResolve: true,
    );
    gh.lazySingleton<_i4.ExpenseDataSource>(
        () => _i5.ExpenseDataSourceImpl(gh<_i3.DataBaseHelper>()));
    gh.lazySingleton<_i6.ExpenseRepository>(
        () => _i7.ExpenseRepositoryImpl(gh<_i4.ExpenseDataSource>()));
    gh.singleton<_i8.GetActiveExpenses>(
        _i8.GetActiveExpenses(gh<_i6.ExpenseRepository>()));
    gh.lazySingleton<_i9.PersonDataSource>(
        () => _i10.PersonDataSourceImpl(gh<_i3.DataBaseHelper>()));
    gh.lazySingleton<_i11.PersonRepository>(
        () => _i12.PersonRepositoryImpl(gh<_i9.PersonDataSource>()));
    gh.singleton<_i13.UpdateExpense>(
        _i13.UpdateExpense(gh<_i6.ExpenseRepository>()));
    gh.singleton<_i14.CreateExpense>(
        _i14.CreateExpense(gh<_i6.ExpenseRepository>()));
    gh.singleton<_i15.CreatePerson>(
        _i15.CreatePerson(gh<_i11.PersonRepository>()));
    gh.factory<_i16.CreatePersonBloc>(
        () => _i16.CreatePersonBloc(gh<_i15.CreatePerson>()));
    gh.factory<_i17.ExpenseBloc>(
        () => _i17.ExpenseBloc(gh<_i8.GetActiveExpenses>()));
    gh.singleton<_i18.GetAllPeople>(
        _i18.GetAllPeople(gh<_i11.PersonRepository>()));
    gh.factory<_i19.PeopleBloc>(() => _i19.PeopleBloc(gh<_i18.GetAllPeople>()));
    return this;
  }
}
