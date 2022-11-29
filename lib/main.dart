import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/common/app_themes.dart';
import 'package:expense_manager/features/home/presentation/pages/home_page.dart';
import 'package:expense_manager/locator.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: L10n.supportedLanguages,
      initialRoute: AppRoutes.initialRoute,
      routes: {
        AppRoutes.home: (context) => HomePage(),
      },
    );
  }
}
