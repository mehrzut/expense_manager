import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/common/app_themes.dart';
import 'package:expense_manager/features/expenses/presentation/pages/add_expense_page.dart';
import 'package:expense_manager/features/home/presentation/pages/home_page.dart';
import 'package:expense_manager/features/people/presentation/bloc/people_bloc.dart';
import 'package:expense_manager/features/people/presentation/pages/add_person_page.dart';
import 'package:expense_manager/locator.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initInjection();
  WidgetsFlutterBinding.ensureInitialized();
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
        )
      ],
      child: MaterialApp(
        theme: AppThemes.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: L10n.supportedLanguages,
        initialRoute: AppRoutes.initialRoute,
        routes: {
          AppRoutes.home: (context) => HomePage(),
          AppRoutes.add_expense: (context) => AddExpensePage(),
          AppRoutes.add_person: (context) => AddPersonPage(),
        },
      ),
    );
  }
}
