import 'package:application/src/ui/widgets/data/data_title.dart';
import 'package:application/src/ui/widgets/data/data_value.dart';
import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final String dataValue;
  final String dataTitle;

  const DescriptionText({
    Key? key,
    required this.dataValue,
    required this.dataTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DataValue(dataValue: dataValue),
        const SizedBox(height: 5.0),
        DataTitle(dataTitle: dataTitle),
      ],
    );
  }
}
