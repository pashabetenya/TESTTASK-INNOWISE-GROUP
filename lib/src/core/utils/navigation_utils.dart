import 'package:application/src/core/bloc/navigation/navigation_cubit.dart';
import 'package:application/src/ui/pages/detail/detail_page.dart';
import 'package:application/src/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationUtils extends StatelessWidget {
  const NavigationUtils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int?>(builder: (context, pokemonId) {
      return Navigator(
        pages: [
          const MaterialPage(child: HomePage()),
          if (pokemonId != null) const MaterialPage(child: DetailPage()),
        ],
        onPopPage: (route, result) {
          BlocProvider.of<NavigationCubit>(context).popToPokedex();
          return route.didPop(result);
        },
      );
    });
  }
}
