import 'package:application/src/core/bloc/detail/pokemon_detail_cubit.dart';
import 'package:application/src/core/bloc/home/pokemon_bloc.dart';
import 'package:application/src/core/bloc/navigation/navigation_cubit.dart';
import 'package:application/src/core/utils/navigation_utils.dart';
import 'package:application/src/core/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
