import 'package:application/index.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pokemonDetailsCubit = PokemonDetailCubit();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeUtils.light,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                PokemonBloc()..add(PokemonPageRequest(page: 0)),
          ),
          BlocProvider(
            create: (context) =>
                NavigationCubit(pokemonDetailCubit: pokemonDetailsCubit),
          ),
          BlocProvider(create: (context) => pokemonDetailsCubit),
        ],
        child: const NavigationUtils(),
      ),
    );
  }
}
