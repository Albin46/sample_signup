import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController textController;
  final String hintText;
  final String label;
  final FormFieldValidator validator;


  const CustomTextField({super.key,
    required this.obscureText,
    required this.textController,
    required this.hintText,
    required this.label,
    required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
          obscureText: obscureText,
          controller: textController,
          validator: validator,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(color: Colors.white),
              hintText: hintText,
              hintStyle: const TextStyle(color: Color(0xff1c3c58)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ))),

      ),
    );
  }
}
