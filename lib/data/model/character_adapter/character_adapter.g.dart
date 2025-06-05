// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterHiveAdapter extends TypeAdapter<CharacterHive> {
  @override
  final int typeId = 1;

  @override
  CharacterHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterHive(
      id: fields[0] as int,
      name: fields[1] as String,
      status: fields[2] as String,
      species: fields[3] as String,
      type: fields[4] as String,
      gender: fields[5] as String,
      originName: fields[6] as String,
      originUrl: fields[7] as String,
      locationName: fields[8] as String,
      locationUrl: fields[9] as String,
      image: fields[10] as String,
      episode: (fields[11] as List).cast<String>(),
      url: fields[12] as String,
      created: fields[13] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterHive obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.species)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.originName)
      ..writeByte(7)
      ..write(obj.originUrl)
      ..writeByte(8)
      ..write(obj.locationName)
      ..writeByte(9)
      ..write(obj.locationUrl)
      ..writeByte(10)
      ..write(obj.image)
      ..writeByte(11)
      ..write(obj.episode)
      ..writeByte(12)
      ..write(obj.url)
      ..writeByte(13)
      ..write(obj.created);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
