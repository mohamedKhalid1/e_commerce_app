import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  const TextFieldAuth(
      {Key? key,
      required this.textHint,
      required this.prefixIconWidget,
      required this.controller,
      required this.textInputType, required this.maxLength,})
      : super(key: key);
  final String textHint;
  final Widget prefixIconWidget;
  final TextInputType textInputType;
  final TextEditingController controller;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

        maxLength: maxLength,
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
            prefixIcon: prefixIconWidget,
            filled: true,
            hintText: textHint,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20))
        ));
  }
}
