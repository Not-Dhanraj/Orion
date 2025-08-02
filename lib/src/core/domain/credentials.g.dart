// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SonarrCredentialsAdapter extends TypeAdapter<SonarrCredentials> {
  @override
  final typeId = 1;

  @override
  SonarrCredentials read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SonarrCredentials(
      sonarrUrl: fields[0] as String,
      sonarrApi: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SonarrCredentials obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.sonarrUrl)
      ..writeByte(1)
      ..write(obj.sonarrApi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SonarrCredentialsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RadarrCredentialsAdapter extends TypeAdapter<RadarrCredentials> {
  @override
  final typeId = 2;

  @override
  RadarrCredentials read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RadarrCredentials(
      radarrUrl: fields[0] as String,
      radarrApi: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RadarrCredentials obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.radarrUrl)
      ..writeByte(1)
      ..write(obj.radarrApi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RadarrCredentialsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
