import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChanged,
      this.decoration,
      this.keyboardType,
      this.controller,
      this.inputFormatters,
      this.maxLength});
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          boxShadow: const [
            BoxShadow(
              blurRadius: 12,
              offset: Offset(0, 8),
              color: Colors.black12,
            )
          ]),
      child: TextField(
        controller: controller,
        maxLength: maxLength,
        decoration: decoration,
        keyboardType: keyboardType,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
