import 'package:flutter/material.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class CapitalTextField extends StatefulWidget {
  const CapitalTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  @override
  State<CapitalTextField> createState() => _CapitalTextFieldState();
}

class _CapitalTextFieldState extends State<CapitalTextField> {
  String capitalText = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 20,
      child: TextField(
        inputFormatters: [ThousandsFormatter()],
        toolbarOptions:
            const ToolbarOptions(copy: true, paste: false, selectAll: true),
        cursorWidth: 0.5,
        onChanged: (value) => setState(() {
          capitalText = value;
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