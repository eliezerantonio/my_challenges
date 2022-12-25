import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SimpleInterestTextField extends StatefulWidget {
  const SimpleInterestTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;

  @override
  State<SimpleInterestTextField> createState() =>
      _SimpleInterestTextFieldState();
}

class _SimpleInterestTextFieldState extends State<SimpleInterestTextField> {
  String capitalText = '';
  String valueConverted = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: TextField(
        dragStartBehavior: DragStartBehavior.down,
        cursorWidth: 0.5,
        onChanged: (value) => setState(() {
          String valueConverted = value.trim().replaceAll(RegExp('[^0-9]'), '');
          capitalText = valueConverted;
        }),
        controller: widget.controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),
        decoration:
            InputDecoration(hintText: widget.hintText, suffixText: ' Kz'),
      ),
    );
  }
}
