// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:indimeet/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: buttonColor),
            )),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
