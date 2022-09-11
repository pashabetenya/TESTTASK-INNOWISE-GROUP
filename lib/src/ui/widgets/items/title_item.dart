import 'package:application/src/core/utils/constants.dart';
import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  final String title;
  final double size;

  const TitleItem({
    Key? key,
    required this.title,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Gotham',
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: kReallyGrey,
      ),
    );
  }
}
