import 'package:application/src/ui/widgets/home/index.dart';

class PokemonItem extends StatelessWidget {
  final String name;
  final String link;
  final int id;

  const PokemonItem({
    Key? key,
    required this.name,
    required this.link,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          BuildingPokemonItem(link: link),
          TitleItem(name: name),
        ],
      ),
    );
  }
}
