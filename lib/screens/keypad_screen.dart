// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:calculator/common/custom_button.dart';

class KeypadScreen extends StatefulWidget {
  final Function(String) onButtonPressed;
  const KeypadScreen({
    Key? key,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  State<KeypadScreen> createState() => _KeypadScreenState();
}

class _KeypadScreenState extends State<KeypadScreen> {
  void funct(String buttonText) {
    widget.onButtonPressed(buttonText);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(buttonText: 'C', funct: () => funct('C')),
            CustomButton(buttonText: '%', funct: () => funct('%')),
            CustomButton(buttonText: '<', funct: () => funct('<')),
            CustomButton(buttonText: '/', funct: () => funct('/')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(buttonText: '7', funct: () => funct('7')),
            CustomButton(buttonText: '8', funct: () => funct('8')),
            CustomButton(buttonText: '9', funct: () => funct('9')),
            CustomButton(buttonText: 'X', funct: () => funct('*')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(buttonText: '4', funct: () => funct('4')),
            CustomButton(buttonText: '5', funct: () => funct('5')),
            CustomButton(buttonText: '6', funct: () => funct('6')),
            CustomButton(buttonText: '-', funct: () => funct('-')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(buttonText: '1', funct: () => funct('1')),
            CustomButton(buttonText: '2', funct: () => funct('2')),
            CustomButton(buttonText: '3', funct: () => funct('3')),
            CustomButton(buttonText: '+', funct: () => funct('+')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(buttonText: '00', funct: () => funct('00')),
            CustomButton(buttonText: '0', funct: () => funct('0')),
            CustomButton(buttonText: '.', funct: () => funct('.')),
            CustomButton(buttonText: '=', funct: () => funct('=')),
          ],
        )
      ],
    );
  }
}
