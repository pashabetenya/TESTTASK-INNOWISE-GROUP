import 'package:application/src/ui/widgets/home/index.dart';

class BuildingPokemonItem extends StatelessWidget {
  final String link;

  const BuildingPokemonItem({
    Key? key,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 180.0,
      width: 160.0,
      decoration: BoxDecoration(
        color: kGreen.withOpacity(0.2),
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ImageItem(link: link),
    );
  }
}
