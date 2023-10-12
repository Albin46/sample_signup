import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String buttonText;

  const CustomButton({super.key,  required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        shadowColor: const MaterialStatePropertyAll(Color(0xff1c3c58)),
        overlayColor: const MaterialStatePropertyAll(Color(0xff1BFFFF)),
        elevation: const MaterialStatePropertyAll(3),
        backgroundColor: const MaterialStatePropertyAll(Color(0xff1c3c58)),
        fixedSize: const MaterialStatePropertyAll(Size(120, 30)),
      ),
      onPressed: () {
        return onTap();
      },
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
