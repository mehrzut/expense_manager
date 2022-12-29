import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/app_strings.dart';
import '../../../../core/presentation/custom_textfield.dart';
import '../../../expenses/presentation/bloc/expense_bloc.dart';
import '../bloc/edit_person_bloc.dart';
import '../bloc/people_bloc.dart';

class EditPersonPage extends StatefulWidget {
  final PersonEntity personEntity;
  EditPersonPage({super.key, required this.personEntity});

  @override
  State<EditPersonPage> createState() => _EditPersonPageState();
}

class _EditPersonPageState extends State<EditPersonPage> {
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.personEntity.displayName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).edit_person_title),
      ),
      body: BlocListener<EditPersonBloc, EditPersonState>(
        listener: (context, state) {
          if (state is FailedPersonEdit) {
            _failedPersonEditHandler(context);
          }
          if (state is SuccessPersonEdit) {
            _successPersonEditHandler(context);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    CustomTextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          labelText: Strings.of(context).name_title),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        _editPersonHandler(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(Strings.of(context).submit_title),
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

  void _successPersonEditHandler(BuildContext context) {
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
    context.read<ExpenseBloc>().add(const ExpenseEvent.getAll());
    if (ModalRoute.of(context)?.settings.name != AppRoutes.home) {
      Navigator.popUntil(
        context,
        (route) => route.isFirst,
      );
    }
  }

  void _failedPersonEditHandler(BuildContext context) {
    ScaffoldMessenger.of(context).showErrorSnack(
      Strings.of(context).edit_person_error_message,
      retry: () {
        _editPersonHandler(context);
      },
    );
  }

  void _editPersonHandler(BuildContext context) {
    if (nameController.text.isNotEmpty) {
      context.read<EditPersonBloc>().add(
            EditPersonEvent.edit(
              widget.personEntity.copyWith(displayName: nameController.text),
            ),
          );
    } else {
      ScaffoldMessenger.of(context).showErrorSnack(
        Strings.of(context).empty_field_error_message,
      );
    }
  }
}
