// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_page_response_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonPageResponseDTOAdapter
    extends TypeAdapter<PokemonPageResponseDTO> {
  @override
  final int typeId = 1;

  @override
  PokemonPageResponseDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonPageResponseDTO(
      pokemonListings: (fields[0] as List).cast<PokemonListingDTO>(),
      canLoadNextPage: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonPageResponseDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.pokemonListings)
      ..writeByte(2)
      ..write(obj.canLoadNextPage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonPageResponseDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
