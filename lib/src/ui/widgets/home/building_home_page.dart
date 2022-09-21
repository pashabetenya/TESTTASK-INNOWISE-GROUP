import 'package:application/src/ui/widgets/home/index.dart';

class BuildingHomePage extends StatefulWidget {
  const BuildingHomePage({Key? key}) : super(key: key);

  @override
  State<BuildingHomePage> createState() => _BuildingHomePageState();
}

class _BuildingHomePageState extends State<BuildingHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        if (state is PokemonLoadInProgress) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PokemonPageLoadSuccess) {
          return GridView.builder(
            itemCount: state.pokemonListings.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => BlocProvider.of<NavigationCubit>(context)
                    .showPokemonDetail(state.pokemonListings[index].id),
                child: PokemonItem(
                  name: state.pokemonListings[index].name,
                  id: state.pokemonListings[index].id,
                  link: state.pokemonListings[index].imageUrl,
                ),
              );
            },
          );
        } else if (state is PokemonPageLoadFailed) {
          return Center(
            child: Text(state.error.toString()),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
