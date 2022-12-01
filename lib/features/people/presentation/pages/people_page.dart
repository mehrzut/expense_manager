import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/features/people/presentation/bloc/people_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.add_person);
        },
        label: Row(
          children: const [
            Text('Add'),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.person_add_outlined),
          ],
        ),
      ),
      body: BlocBuilder<PeopleBloc, PeopleState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (people) => people.isNotEmpty
              ? ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(people[index].displayName),
                  ),
                )
              : Center(
                  child: Text('List is empty!'),
                ),
        ),
      ),
    );
  }
}
