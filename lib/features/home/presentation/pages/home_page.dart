import 'package:expense_manager/common/app_strings.dart';
import 'package:expense_manager/features/expenses/presentation/pages/expenses_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  createState() => _HomePage();
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).app_name),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              text: 'People',
            ),
            Tab(
              text: 'Expenses',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(),
          ExpensesPage(
          ),
        ],
      ),
    );
  }
}
