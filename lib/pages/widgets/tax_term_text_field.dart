import 'package:flutter/material.dart';

class TaxAndTermTextField extends StatefulWidget {
  const TaxAndTermTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.suffixText,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  final String suffixText;
  @override
  State<TaxAndTermTextField> createState() => _TaxAndTermTextFieldState();
}

class _TaxAndTermTextFieldState extends State<TaxAndTermTextField> {
  String capitalText = '';
  String valueConverted = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: TextField(
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
            InputDecoration(hintText: widget.hintText, suffixText: widget.suffixText),
      ),
    );
  }
}
