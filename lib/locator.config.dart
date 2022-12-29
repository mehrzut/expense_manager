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
    as _i8;
import 'package:expense_manager/features/expenses/domain/repositories/expense_repository.dart'
    as _i7;
import 'package:expense_manager/features/expenses/domain/usecases/create_expense.dart'
    as _i17;
import 'package:expense_manager/features/expenses/domain/usecases/get_all_expenses.dart'
    as _i9;
import 'package:expense_manager/features/expenses/domain/usecases/get_person_expenses.dart'
    as _i10;
import 'package:expense_manager/features/expenses/domain/usecases/update_expense.dart'
    as _i16;
import 'package:expense_manager/features/expenses/presentation/bloc/create_expense_bloc.dart'
    as _i18;
import 'package:expense_manager/features/expenses/presentation/bloc/edit_expense_bloc.dart'
    as _i21;
import 'package:expense_manager/features/expenses/presentation/bloc/expense_bloc.dart'
    as _i24;
import 'package:expense_manager/features/expenses/presentation/bloc/person_expense_bloc.dart'
    as _i13;
import 'package:expense_manager/features/expenses/presentation/cubit/expense_input_cubit.dart'
    as _i6;
import 'package:expense_manager/features/people/data/datasources/person_data_source.dart'
    as _i11;
import 'package:expense_manager/features/people/data/datasources/person_data_source_impl.dart'
    as _i12;
import 'package:expense_manager/features/people/data/repositories/person_repository_impl.dart'
    as _i15;
import 'package:expense_manager/features/people/domain/repositories/person_repository.dart'
    as _i14;
import 'package:expense_manager/features/people/domain/usecases/create_person.dart'
    as _i19;
import 'package:expense_manager/features/people/domain/usecases/edit_person.dart'
    as _i22;
import 'package:expense_manager/features/people/domain/usecases/get_all_people.dart'
    as _i25;
import 'package:expense_manager/features/people/presentation/bloc/create_person_bloc.dart'
    as _i20;
import 'package:expense_manager/features/people/presentation/bloc/edit_person_bloc.dart'
    as _i23;
import 'package:expense_manager/features/people/presentation/bloc/people_bloc.dart'
    as _i26;
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
    gh.factory<_i6.ExpenseInputCubit>(() => _i6.ExpenseInputCubit());
    gh.lazySingleton<_i7.ExpenseRepository>(
        () => _i8.ExpenseRepositoryImpl(gh<_i4.ExpenseDataSource>()));
    gh.singleton<_i9.GetAllExpenses>(
        _i9.GetAllExpenses(gh<_i7.ExpenseRepository>()));
    gh.singleton<_i10.GetPersonExpenses>(
        _i10.GetPersonExpenses(gh<_i7.ExpenseRepository>()));
    gh.lazySingleton<_i11.PersonDataSource>(
        () => _i12.PersonDataSourceImpl(gh<_i3.DataBaseHelper>()));
    gh.factory<_i13.PersonExpenseBloc>(
        () => _i13.PersonExpenseBloc(gh<_i10.GetPersonExpenses>()));
    gh.lazySingleton<_i14.PersonRepository>(
        () => _i15.PersonRepositoryImpl(gh<_i11.PersonDataSource>()));
    gh.singleton<_i16.UpdateExpense>(
        _i16.UpdateExpense(gh<_i7.ExpenseRepository>()));
    gh.singleton<_i17.CreateExpense>(
        _i17.CreateExpense(gh<_i7.ExpenseRepository>()));
    gh.factory<_i18.CreateExpenseBloc>(
        () => _i18.CreateExpenseBloc(gh<_i17.CreateExpense>()));
    gh.singleton<_i19.CreatePerson>(
        _i19.CreatePerson(gh<_i14.PersonRepository>()));
    gh.factory<_i20.CreatePersonBloc>(
        () => _i20.CreatePersonBloc(gh<_i19.CreatePerson>()));
    gh.factory<_i21.EditExpenseBloc>(
        () => _i21.EditExpenseBloc(gh<_i16.UpdateExpense>()));
    gh.singleton<_i22.EditPerson>(_i22.EditPerson(gh<_i14.PersonRepository>()));
    gh.factory<_i23.EditPersonBloc>(
        () => _i23.EditPersonBloc(gh<_i22.EditPerson>()));
    gh.factory<_i24.ExpenseBloc>(
        () => _i24.ExpenseBloc(gh<_i9.GetAllExpenses>()));
    gh.singleton<_i25.GetAllPeople>(
        _i25.GetAllPeople(gh<_i14.PersonRepository>()));
    gh.factory<_i26.PeopleBloc>(() => _i26.PeopleBloc(gh<_i25.GetAllPeople>()));
    return this;
  }
}
