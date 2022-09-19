import 'package:application/past changes/src/core/utils/index.dart';

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
