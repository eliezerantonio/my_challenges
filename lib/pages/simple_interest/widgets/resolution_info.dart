import 'package:flutter/material.dart';

class ResolutionInfo extends StatelessWidget {
  const ResolutionInfo({Key? key, required this.info, required this.data})
      : super(key: key);
  final String info, data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          info,
          style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 62, 62, 62)),
        ),
        const SizedBox(width: 10.0),
        Text(
          data,
          style: const TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
