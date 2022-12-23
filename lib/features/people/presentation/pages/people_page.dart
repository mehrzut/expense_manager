import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/presentation/bloc/people_bloc.dart';
import 'package:expense_manager/features/people/presentation/pages/person_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/app_strings.dart';
import '../bloc/create_person_bloc.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.addPerson);
        },
        label: Row(
          children:  [
            Text(Strings.of(context).add_title),
            const SizedBox(
              width: 5,
            ),
            const Icon(Icons.person_add_outlined),
          ],
        ),
      ),
      body: BlocListener<PeopleBloc, PeopleState>(
        listener: (context, state) {
          if (state is FailedGetAllPeople) {
            _failedGetAllPeopleHandler(context);
          }
        },
        child: BlocListener<CreatePersonBloc, CreatePersonState>(
          listener: (context, creationState) {
            if (creationState is SuccessPersonCreation) {
              getData(context);
            }
          },
          child: BlocBuilder<PeopleBloc, PeopleState>(
            builder: (context, state) => state.maybeWhen(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (people) => people.isNotEmpty
                  ? ListView.builder(
                      itemCount: people.length,
                      itemBuilder: (context, index) =>
                          PersonItem(person: people[index]),
                    )
                  :  Center(
                      child: Text(Strings.of(context).empty_list_message),
                    ),
              failed: (message) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Center(child: Text(Strings.of(context).get_data_error_message)),
                  TextButton(
                    onPressed: () => getData(context),
                    child: Text(Strings.of(context).retry_title),
                  )
                ],
              ),
              orElse: () => const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }

  void _failedGetAllPeopleHandler(BuildContext context) {
    ScaffoldMessenger.of(context).showErrorSnack(
      Strings.of(context).get_data_error_message,
      retry: () {
        getData(context);
      },
    );
  }

  void getData(BuildContext context) {
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
  }
}
