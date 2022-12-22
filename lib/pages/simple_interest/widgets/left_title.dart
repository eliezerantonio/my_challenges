import 'package:flutter/material.dart';

class LeftTitle extends StatelessWidget {
  const LeftTitle({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.grey),
    );
  }
}
