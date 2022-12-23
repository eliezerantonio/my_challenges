import 'package:flutter/material.dart';

class NibTextField extends StatefulWidget {
  const NibTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController? controller;

  @override
  State<NibTextField> createState() => _NibTextFieldState();
}

class _NibTextFieldState extends State<NibTextField> {
  String capitalText = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        decoration:
            const InputDecoration(hintText: 'AO66.0066.0000.4524.5476.5643.89'),
      ),
    );
  }
}
