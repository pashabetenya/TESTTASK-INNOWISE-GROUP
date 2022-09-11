import 'package:application/src/core/utils/constants.dart';
import 'package:flutter/material.dart';

class IdText extends StatelessWidget {
  final int id;

  const IdText({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      formatID(id),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'CircularStd',
        fontSize: 21.5,
        color: kLightGrey,
      ),
    );
  }
}
