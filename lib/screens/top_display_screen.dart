// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TopDisplayScreen extends StatefulWidget {
  final String currentInput;
  final String result;
  const TopDisplayScreen({
    Key? key,
    required this.currentInput,
    required this.result,
  }) : super(key: key);

  @override
  State<TopDisplayScreen> createState() => _TopDisplayScreenState();
}

class _TopDisplayScreenState extends State<TopDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          alignment: Alignment.bottomRight,
          height: 120,
          child: Column(
            children: [
              Text(
                widget.currentInput,
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.result,
                style: const TextStyle(
                    fontSize: 40, fontWeight: FontWeight.normal),
              ),
            ],
          )),
    );
  }
}
