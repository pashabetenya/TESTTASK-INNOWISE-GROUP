// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_listing_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonListingDTOAdapter extends TypeAdapter<PokemonListingDTO> {
  @override
  final int typeId = 0;

  @override
  PokemonListingDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonListingDTO(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonListingDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonListingDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
