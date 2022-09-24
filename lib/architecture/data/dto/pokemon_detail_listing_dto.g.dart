// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_listing_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDetailListingDTOAdapter
    extends TypeAdapter<PokemonDetailListingDTO> {
  @override
  final int typeId = 3;

  @override
  PokemonDetailListingDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDetailListingDTO(
      name: fields[1] as String,
      id: fields[0] as int,
      types: (fields[2] as List).cast<String>(),
      height: fields[3] as int,
      weight: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetailListingDTO obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.types)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailListingDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
