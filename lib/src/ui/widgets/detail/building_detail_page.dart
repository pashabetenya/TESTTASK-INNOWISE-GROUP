import 'package:application/src/ui/widgets/detail/index.dart';

class BuildingDetailPage extends StatefulWidget {
  const BuildingDetailPage({Key? key}) : super(key: key);

  @override
  State<BuildingDetailPage> createState() => _BuildingDetailPageState();
}

class _BuildingDetailPageState extends State<BuildingDetailPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<PokemonDetailCubit, PokemonDetailListing?>(
      builder: (context, detail) {
        return detail != null
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: size.height / 1.9,
                      width: size.width / 1.2,
                      decoration: BoxDecoration(
                        color: colorItem(detail.types[0]),
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: DetailPokemonItem(
                        name: detail.name,
                        id: detail.id,
                        link: detail.imageUrl,
                        type: detail.types[0],
                        height: detail.height,
                        weight: detail.weight,
                      ),
                    ),
                  ],
                ),
              )
            : Container();
      },
    );
  }
}
