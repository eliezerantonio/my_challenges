import 'package:flutter/material.dart';

class NibTextField extends StatefulWidget {
  const NibTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  @override
  State<NibTextField> createState() => _NibTextFieldState();
}

class _NibTextFieldState extends State<NibTextField> {
  String capitalText = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 20,
      child: TextField(
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
