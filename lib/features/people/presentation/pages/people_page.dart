import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:expense_manager/features/people/presentation/bloc/people_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../common/app_strings.dart';
import '../bloc/create_person_bloc.dart';
import '../widgets/person_item.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.addPerson);
        },
        label: Row(
          children: [
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
            _failedGetAllPeopleHandler();
          }
        },
        child: BlocListener<CreatePersonBloc, CreatePersonState>(
          listener: (context, creationState) {
            if (creationState is SuccessPersonCreation) {
              getData();
            }
          },
          child: BlocBuilder<PeopleBloc, PeopleState>(
            builder: (context, state) => state.maybeWhen(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (people) => people.isNotEmpty
                  ? SlidableAutoCloseBehavior(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsetsDirectional.only(
                            top: 12, bottom: 72),
                        itemCount: people.length,
                        itemBuilder: (context, index) => PersonItem(
                          person: people[index],
                          onTap: _onPersonClick,
                          onEditClick: _onEditClick,
                          onCardNumberCopyClick: _onCardNumberCopyClick,
                        ),
                      ),
                    )
                  : Center(
                      child: Text(Strings.of(context).empty_list_message),
                    ),
              failed: (message) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(Strings.of(context).get_data_error_message)),
                  TextButton(
                    onPressed: () => getData(),
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

  void _failedGetAllPeopleHandler() {
    ScaffoldMessenger.of(context).showErrorSnack(
      Strings.of(context).get_data_error_message,
      retry: () {
        getData();
      },
    );
  }

  void getData() {
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
  }

  _onPersonClick(PersonEntity person) {
    Navigator.pushNamed(context, AppRoutes.personExpense, arguments: person);
  }

  _onEditClick(PersonEntity personEntity) {
    Navigator.pushNamed(
      context,
      AppRoutes.editPerson,
      arguments: personEntity,
    );
  }

  _onCardNumberCopyClick(PersonEntity personEntity) async {
    Clipboard.setData(ClipboardData(text: personEntity.cardNumber))
        .then((value) {
      ScaffoldMessenger.of(context).showSuccessSnack(
        Strings.of(context).card_no_copy_message,
      );
    });
  }
}
