import 'package:application/src/ui/widgets/texts/description_text.dart';
import 'package:application/src/ui/widgets/total/line_between.dart';
import 'package:flutter/material.dart';

class DataItem extends StatelessWidget {
  final String dataValue1st;
  final String dataValue2nd;
  final String dataValue3th;

  const DataItem({
    Key? key,
    required this.dataValue1st,
    required this.dataValue2nd,
    required this.dataValue3th,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        DescriptionText(
          dataValue: dataValue1st,
          dataTitle: 'Type',
        ),
        const LineBetween(),
        DescriptionText(
          dataValue: dataValue2nd,
          dataTitle: 'Height',
        ),
        const LineBetween(),
        DescriptionText(
          dataValue: dataValue3th,
          dataTitle: 'Weight',
        ),
      ],
    );
  }
}
