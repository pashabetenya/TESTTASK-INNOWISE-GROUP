import 'package:application/past changes/src/ui/widgets/detail/index.dart';

class DataTitle extends StatelessWidget {
  final String dataTitle;

  const DataTitle({
    Key? key,
    required this.dataTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      dataTitle.toUpperCase(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Gotham',
        fontSize: 18.0,
        color: kReallyGrey.withOpacity(0.8),
      ),
    );
  }
}
