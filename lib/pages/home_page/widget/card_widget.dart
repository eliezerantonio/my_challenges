import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String title;
  final String description;
  final String urlImage;
  final String subtitle;
  final Color color;

  const CardWidget({
    required this.title,
    required this.description,
    required this.urlImage,
    required this.subtitle,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(8),
        child: Container(
          color: widget.color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [],
          ),
        ),
      );

  Widget buildImage() => Image.asset(
        widget.urlImage,
        width: double.infinity,
        fit: BoxFit.cover,
      );

  Widget buildText() => Container(
        color: widget.color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.subtitle,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      );
}
