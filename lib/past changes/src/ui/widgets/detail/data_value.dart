import 'package:application/past changes/src/ui/widgets/detail/index.dart';

class DataValue extends StatelessWidget {
  final String dataValue;

  const DataValue({
    Key? key,
    required this.dataValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      dataValue.toUpperCase(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'CircularStd',
        fontSize: 21.0,
        color: kLightGrey,
      ),
    );
  }
}
