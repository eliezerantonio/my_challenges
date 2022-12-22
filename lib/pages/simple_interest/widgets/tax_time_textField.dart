import 'package:flutter/material.dart';

class TaxTimeTextField extends StatelessWidget {
  const TaxTimeTextField(
      {Key? key, required this.text, required this.controller})
      : super(key: key);
  final String? text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 22,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),
        decoration: InputDecoration(
          hintText: text,
        ),
      ),
    );
  }
}
