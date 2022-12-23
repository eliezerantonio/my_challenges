import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Row(
        children: [
          icon,
          const SizedBox(width: 15.0),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'Inter',
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
