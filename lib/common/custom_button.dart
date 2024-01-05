// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback funct;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.funct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: funct,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), //<-- SEE HERE
          padding: const EdgeInsets.all(25),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 35, color: Colors.black),
        ));
  }
}
