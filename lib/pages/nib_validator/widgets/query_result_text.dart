import 'package:flutter/material.dart';

class QueryResultText extends StatelessWidget {
  const QueryResultText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 26, 26, 26),
        fontFamily: 'Inter',
      ),
    );
  }
}
