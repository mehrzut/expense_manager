import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/app_strings.dart';
import '../../../../core/presentation/custom_textfield.dart';
import '../bloc/create_person_bloc.dart';
import '../bloc/people_bloc.dart';

class AddPersonPage extends StatelessWidget {
  AddPersonPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cardNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).add_person_title),
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
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    CustomTextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          labelText: Strings.of(context).name_title),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      controller: cardNoController,
                      maxLength: 19,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: Strings.of(context).card_number_title,
                          counter: const SizedBox()),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CardNumberFormatter(),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        _createPersonHandler(context);
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

  void _successPersonCreationHandler(BuildContext context) {
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
    if (ModalRoute.of(context)?.settings.name == AppRoutes.addPerson) {
      Navigator.pop(context);
    }
  }

  void _failedPersonCreationHandler(BuildContext context) {
    ScaffoldMessenger.of(context).showErrorSnack(
      Strings.of(context).create_person_error_message,
      retry: () {
        _createPersonHandler(context);
      },
    );
  }

  void _createPersonHandler(BuildContext context) {
    if (nameController.text.isNotEmpty && cardNoController.text.isValidCardNo) {
      context.read<CreatePersonBloc>().add(
            CreatePersonEvent.createPerson(
              PersonEntity(
                displayName: nameController.text,
                cardNumber: cardNoController.text,
              ),
            ),
          );
    } else if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showErrorSnack(
        Strings.of(context).empty_field_error_message,
      );
    } else {
      ScaffoldMessenger.of(context).showErrorSnack(
        Strings.of(context).invalid_card_number_message,
      );
    }
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var inputText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
