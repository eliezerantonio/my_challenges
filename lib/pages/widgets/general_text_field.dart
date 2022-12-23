import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 20,
      child: TextField(
       
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
