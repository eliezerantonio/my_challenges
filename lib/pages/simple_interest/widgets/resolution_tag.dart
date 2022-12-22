import 'package:flutter/material.dart';

class ResolutionTag extends StatelessWidget {
  const ResolutionTag({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.blue));
  }
}