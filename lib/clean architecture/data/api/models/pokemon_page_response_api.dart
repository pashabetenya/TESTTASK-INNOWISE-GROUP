class PokemonPageResponseApi {
  final String name;
  // final String url;

  // String get imageUrl => 'https://cdn.traction.one/pokedex/pokemon/$id.png';
  // int get id => int.parse(url.split('/')[6]);

  PokemonPageResponseApi.fromApi(Map<String, dynamic> json)
      : name = json['results'][1]['name'];
  // url = json['results']['url'];
}
