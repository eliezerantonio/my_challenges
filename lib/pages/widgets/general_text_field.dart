import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class GeneralTextField extends StatefulWidget {
  const GeneralTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  @override
  State<GeneralTextField> createState() => _GeneralTextFieldState();
}

class _GeneralTextFieldState extends State<GeneralTextField> {
  String capitalText = '';
  String valueConverted = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 20,
      child: TextField(
        cursorWidth: 0.5,
        inputFormatters: [
          CurrencyInputFormatter(
              thousandSeparator: ThousandSeparator.None, trailingSymbol: ' Kz'),
        ],
        onChanged: (value) => setState(() {
          String valueConverted = value.trim().replaceAll(RegExp('[^0-9]'), '');
          capitalText = valueConverted;
        }),
        controller: widget.controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),
        decoration: InputDecoration(hintText: widget.hintText),
      ),
    );
  }
}
