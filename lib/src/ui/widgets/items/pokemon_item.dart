import 'package:application/src/core/utils/constants.dart';
import 'package:application/src/ui/widgets/items/image_item.dart';
import 'package:application/src/ui/widgets/items/title_item.dart';
import 'package:flutter/material.dart';

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
          _pokemonItem(),
          _titleItem(),
        ],
      ),
    );
  }

  Widget _pokemonItem() {
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

  Widget _titleItem() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TitleItem(
        size: 15.0,
        title: name.toUpperCase(),
      ),
    );
  }
}
