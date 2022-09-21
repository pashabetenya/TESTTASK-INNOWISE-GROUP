import 'package:application/src/ui/widgets/home/index.dart';

class TitleItem extends StatelessWidget {
  final String name;

  const TitleItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        name.toUpperCase(),
        style: const TextStyle(
          fontFamily: 'Gotham',
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
          color: kReallyGrey,
        ),
      ),
    );
  }
}
