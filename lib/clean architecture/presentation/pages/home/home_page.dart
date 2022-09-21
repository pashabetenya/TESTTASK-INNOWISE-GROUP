import 'package:application/clean%20architecture/domain/models/pokemon_page_response.dart';
import 'package:application/clean%20architecture/domain/state/home_state.dart';
import 'package:application/clean%20architecture/internal/dependencies/home_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _indexController = TextEditingController();

  HomeState? state;

  @override
  void initState() {
    super.initState();
    state = HomeModule.homeState();
  }

  PokemonPageResponse? _pokemon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Testing'),
          elevation: 0.6,
        ),
        backgroundColor: Colors.white,
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // _getRowInput(),
            const SizedBox(height: 20.0),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                _getPokemon();
              },
              child: const Text('Получить список.'),
            ),
            const SizedBox(height: 20.0),
            if (_pokemon != null) _getPokemonInformation(_pokemon!),
          ],
        ),
      ),
    );
  }

  // Widget _getRowInput() {
  //   return Row(
  //     children: const [
  //       Expanded(
  //         child: TextField(
  //           // controller: _indexController,
  //           keyboardType:
  //               TextInputType.numberWithOptions(decimal: true, signed: true),
  //           decoration: InputDecoration(hintText: 'Нажмите кнопку..'),
  //         ),
  //       ),
  //       SizedBox(width: 20.0),
  //     ],
  //   );
  // }

  Widget _getPokemonInformation(PokemonPageResponse pokemon) {
    return Observer(
      builder: (_) {
        if (state!.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        // I'll fix it later!
        // ignore: unnecessary_null_comparison
        if (state!.pokemon == null) return Container();
        print(state!.pokemon!.name[1]);

        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Покемон: ${state!.pokemon!.name[index]}'),
              ],
            );
          },
        );
      },
    );
  }

  void _getPokemon() {
    // здесь получаем данные.
    // final index = int.tryParse(_indexController.text);
    state!.getPokemon();
    // state!.getPokemon(index: 0);
  }
}
