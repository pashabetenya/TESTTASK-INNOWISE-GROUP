import 'package:application/src/ui/widgets/items/data_item.dart';
import 'package:application/src/ui/widgets/items/image_item.dart';
import 'package:application/src/ui/widgets/items/number_item.dart';
import 'package:application/src/ui/widgets/items/title_item.dart';
import 'package:flutter/material.dart';

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
          _imageItem(),
          _titleItem(),
          _idItem(),
          _dataItem(),
        ],
      ),
    );
  }

  Widget _imageItem() {
    return SizedBox(
      height: 160.0,
      child: ImageItem(link: link),
    );
  }

  Widget _titleItem() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: TitleItem(
        size: 28.0,
        title: name.toUpperCase(),
      ),
    );
  }

  Widget _idItem() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: NumberItem(id: id),
    );
  }

  Widget _dataItem() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: DataItem(
            dataValue1st: type,
            dataValue2nd: height.toString(),
            dataValue3th: weight.toString(),
          ),
        ),
      ],
    );
  }
}
