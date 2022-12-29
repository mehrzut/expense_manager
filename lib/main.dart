import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/common/app_themes.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:expense_manager/features/expenses/presentation/bloc/edit_expense_bloc.dart';
import 'package:expense_manager/features/expenses/presentation/cubit/expense_input_cubit.dart';
import 'package:expense_manager/features/expenses/presentation/pages/add_expense_page.dart';
import 'package:expense_manager/features/expenses/presentation/pages/expense_detail_page.dart';
import 'package:expense_manager/features/home/presentation/pages/home_page.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/presentation/bloc/edit_person_bloc.dart';
import 'package:expense_manager/features/people/presentation/bloc/people_bloc.dart';
import 'package:expense_manager/features/people/presentation/pages/add_person_page.dart';
import 'package:expense_manager/features/people/presentation/pages/edit_person_page.dart';
import 'package:expense_manager/locator.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/expenses/presentation/bloc/create_expense_bloc.dart';
import 'features/expenses/presentation/bloc/expense_bloc.dart';
import 'features/expenses/presentation/bloc/person_expense_bloc.dart';
import 'features/expenses/presentation/pages/person_expense_page.dart';
import 'features/people/presentation/bloc/create_person_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PeopleBloc>(
          create: (context) => getIt(),
        ),
        BlocProvider<ExpenseBloc>(
          create: (context) => getIt(),
        ),
        BlocProvider<CreatePersonBloc>(
          create: (context) => getIt(),
        ),
      ],
      child: MaterialApp(
        theme: AppThemes.light,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: L10n.supportedLanguages,
        initialRoute: AppRoutes.initialRoute,
        routes: {
          AppRoutes.home: (context) => const HomePage(),
          AppRoutes.addExpense: (context) => MultiBlocProvider(
                providers: [
                  BlocProvider<ExpenseInputCubit>(
                    create: (context) => getIt(),
                  ),
                  BlocProvider<CreateExpenseBloc>(
                    create: (context) => getIt(),
                  ),
                ],
                child: AddExpensePage(
                  personEntity: ModalRoute.of(context)!.settings.arguments
                      as PersonEntity?,
                ),
              ),
          AppRoutes.expenseDetail: (context) => MultiBlocProvider(
                providers: [
                  BlocProvider<ExpenseInputCubit>(
                    create: (context) => getIt(),
                  ),
                  BlocProvider<EditExpenseBloc>(
                    create: (context) => getIt(),
                  ),
                ],
                child: ExpenseDetailPage(
                    expenseEntity: ModalRoute.of(context)!.settings.arguments
                        as ExpenseEntity),
              ),
          AppRoutes.addPerson: (context) => AddPersonPage(),
          AppRoutes.personExpense: (context) => BlocProvider<PersonExpenseBloc>(
                create: (context) => getIt(),
                child: PersonExpensePage(
                  personEntity: ModalRoute.of(context)!.settings.arguments
                      as PersonEntity,
                ),
              ),
          AppRoutes.editPerson: (context) => MultiBlocProvider(
                providers: [
                  BlocProvider<EditPersonBloc>(
                    create: (context) => getIt(),
                  ),
                ],
                child: EditPersonPage(
                  personEntity: (ModalRoute.of(context)?.settings.arguments
                      as PersonEntity),
                ),
              )
        },
      ),
    );
  }
}
