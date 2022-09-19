import 'package:application/past changes/src/ui/widgets/detail/index.dart';

class DetailPokemonItem extends StatelessWidget {
  final String name;
  final String type;
  final String link;
  final int height;
  final int weight;
  final int id;

  const DetailPokemonItem({
    Key? key,
    required this.height,
    required this.weight,
    required this.name,
    required this.type,
    required this.link,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: <Widget>[
          ImageDetailItem(link: link),
          TitleDetailItem(name: name),
          NumberDetailItem(id: id),
          DataDetailItem(
            dataValue1st: type,
            dataValue2nd: height.toString(),
            dataValue3th: weight.toString(),
          ),
        ],
      ),
    );
  }
}
