import 'package:application/src/ui/widgets/detail/index.dart';

class DataDetailItem extends StatelessWidget {
  final String dataValue1st;
  final String dataValue2nd;
  final String dataValue3th;

  const DataDetailItem({
    Key? key,
    required this.dataValue1st,
    required this.dataValue2nd,
    required this.dataValue3th,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DescriptionText(
                dataValue: dataValue1st,
                dataTitle: 'Type',
              ),
              const Line(),
              DescriptionText(
                dataValue: dataValue2nd,
                dataTitle: 'Height',
              ),
              const Line(),
              DescriptionText(
                dataValue: dataValue3th,
                dataTitle: 'Weight',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
