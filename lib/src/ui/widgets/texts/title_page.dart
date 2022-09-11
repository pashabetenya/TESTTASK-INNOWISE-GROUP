import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  final String title;
  final Color color;

  const TitlePage({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(
        fontFamily: 'Gotham',
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: 24.0,
      ),
    );
  }
}
