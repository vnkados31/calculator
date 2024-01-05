import 'package:calculator/screens/keypad_screen.dart';
import 'package:calculator/screens/top_display_screen.dart';
import 'package:flutter/material.dart';
import "package:function_tree/function_tree.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String input = '0';
  int output = 0;
  String result = '0';

  String exp = '';
  String num1 = '';
  String num2 = '';

  void onButtonPressed(String buttonText) {
    if (buttonText == '0' ||
        buttonText == '1' ||
        buttonText == '2' ||
        buttonText == '3' ||
        buttonText == '4' ||
        buttonText == '5' ||
        buttonText == '6' ||
        buttonText == '7' ||
        buttonText == '8' ||
        buttonText == '9') {
      if (exp == '') {
        num1 += buttonText;
        result = num1;
      } else {
        num2 += buttonText;
        result = num2;
      }
    } else if (buttonText == '*' ||
        buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '/') {
      if (num1 == '') {
        num1 = '0';
        input = num1 + exp;
        exp = buttonText;
      } else if (exp == '') {
        exp = buttonText;
        input = num1 + buttonText;
      } else {
        if (num2 != '') {
          result = "${(num1 + exp + num2).interpret()}";
          input = result + exp;
          exp = buttonText;
          num1 = result;
          num2 = '';
        } else {
          exp = buttonText;
          input = num1 + exp;
        }
      }
    } else if (buttonText == '=') {
      if (num1 == '') {
        input = '';
        result = '';
      } else if (exp == '') {
        input = num1;
        result = num2;
      } else if (num2 == '') {
        input = num1 + exp + num1;
        result = "${(num1 + exp + num1).interpret()}";
        num1 = result;
        exp = '';
      } else {
        input = num1 + exp + num2;
        result = "${(num1 + exp + num2).interpret()}";
        num1 = result;
        num2 = '';
        exp = '';
      }
    } else if (buttonText == 'C') {
      result = '';
      input = '';
      num1 = '';
      num2 = '';
      exp = '';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: TopDisplayScreen(
              currentInput: input,
              result: result,
            ),
          ),
          Expanded(
            flex: 6,
            child: KeypadScreen(onButtonPressed: onButtonPressed),
          )
        ],
      ),
    );
  }
}
