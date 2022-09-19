import 'package:application/past changes/src/ui/widgets/detail/index.dart';

class DetailTitleText extends StatelessWidget {
  final String title = 'Detail Page';

  const DetailTitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: const TextStyle(
        fontFamily: 'Gotham',
        fontWeight: FontWeight.bold,
        color: kLightGrey,
        fontSize: 24.0,
      ),
    );
  }
}
