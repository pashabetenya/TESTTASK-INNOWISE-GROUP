// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_page_response_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDetailPageResponseDTOAdapter
    extends TypeAdapter<PokemonDetailPageResponseDTO> {
  @override
  final int typeId = 2;

  @override
  PokemonDetailPageResponseDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDetailPageResponseDTO(
      name: fields[1] as String,
      id: fields[0] as int,
      types: (fields[2] as List).cast<String>(),
      height: fields[3] as int,
      weight: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetailPageResponseDTO obj) {
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
      other is PokemonDetailPageResponseDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
