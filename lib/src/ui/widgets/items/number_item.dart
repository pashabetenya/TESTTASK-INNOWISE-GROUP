import 'package:application/src/ui/widgets/texts/id_text.dart';
import 'package:application/src/ui/widgets/texts/number_text.dart';
import 'package:flutter/material.dart';

class NumberItem extends StatelessWidget {
  final int id;

  const NumberItem({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const NumberText(),
        IdText(id: id),
      ],
    );
  }
}
