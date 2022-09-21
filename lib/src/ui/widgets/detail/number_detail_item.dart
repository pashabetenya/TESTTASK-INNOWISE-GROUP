import 'package:application/src/ui/widgets/detail/index.dart';

class NumberDetailItem extends StatelessWidget {
  final int id;

  const NumberDetailItem({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const NumberText(),
          IdText(id: id),
        ],
      ),
    );
  }
}
