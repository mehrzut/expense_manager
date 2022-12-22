import 'dart:developer';

import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/create_person_bloc.dart';
import '../bloc/people_bloc.dart';

class AddPersonPage extends StatelessWidget {
  AddPersonPage({super.key});
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Person'),
      ),
      body: BlocListener<CreatePersonBloc, CreatePersonState>(
        listener: (context, state) {
          if (state is FailedPersonCreation) {
            _failedPersonCreationHandler(context);
          }
          if (state is SuccessPersonCreation) {
            _successPersonCreationHandler(context);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Expanded(
                child: Column(children: [
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                  ),
                ]),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        _createPersonHandler(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Submit'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _successPersonCreationHandler(BuildContext context) {
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
    if (ModalRoute.of(context)?.settings.name == AppRoutes.addPerson) {
      Navigator.pop(context);
    }
  }

  void _failedPersonCreationHandler(BuildContext context) {
    ScaffoldMessenger.of(context).showErrorSnack(
      "Couldn't create person! try again.",
      retry: () {
        _createPersonHandler(context);
      },
    );
  }

  void _createPersonHandler(BuildContext context) {
    if (nameController.text.isNotEmpty) {
      context.read<CreatePersonBloc>().add(
            CreatePersonEvent.createPerson(
              PersonEntity(displayName: nameController.text),
            ),
          );
    } else {
      ScaffoldMessenger.of(context).showErrorSnack(
        'Please fill empty fields.',
      );
    }
  }
}
