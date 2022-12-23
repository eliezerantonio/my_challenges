import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Icon icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: FadeInUp(
        child: Row(
          children: [
            icon,
            const SizedBox(width: 10.0),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}