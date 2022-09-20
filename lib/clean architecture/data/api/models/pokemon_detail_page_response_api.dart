class PokemonDetailPageResponseApi {
  final int id;
  final String name;
  final List<String> types;
  final int height;
  final int weight;

  String get imageUrl => 'https://cdn.traction.one/pokedex/pokemon/$id.png';

  PokemonDetailPageResponseApi.fromApi(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        types = (json['types'] as List)
            .map((typeJson) => typeJson['type']['name'] as String)
            .toList(),
        height = json['height'],
        weight = json['weight'];
}
