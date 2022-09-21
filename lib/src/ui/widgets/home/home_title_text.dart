import 'package:application/src/ui/widgets/home/index.dart';

class HomeTitleText extends StatelessWidget {
  final String title = 'Home Page';

  const HomeTitleText({Key? key}) : super(key: key);

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
