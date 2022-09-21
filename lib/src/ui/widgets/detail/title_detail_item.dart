import 'package:application/src/ui/widgets/detail/index.dart';

class TitleDetailItem extends StatelessWidget {
  final String name;

  const TitleDetailItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Text(
        name.toUpperCase(),
        style: const TextStyle(
          fontFamily: 'Gotham',
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          color: kReallyGrey,
        ),
      ),
    );
  }
}
