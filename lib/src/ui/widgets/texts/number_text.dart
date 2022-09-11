import 'package:application/src/core/utils/constants.dart';
import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  const NumberText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'NUMBER: ',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Gotham',
        fontSize: 18.0,
        color: kReallyGrey.withOpacity(0.8),
      ),
    );
  }
}
