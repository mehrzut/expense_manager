import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChanged,
      this.decoration,
      this.keyboardType,
      this.controller});
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;

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
        decoration: decoration,
        keyboardType: keyboardType,
        onChanged: onChanged,
      ),
    );
  }
}
