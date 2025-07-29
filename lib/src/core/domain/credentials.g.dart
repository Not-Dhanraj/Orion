// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CredentialsAdapter extends TypeAdapter<Credentials> {
  @override
  final typeId = 1;

  @override
  Credentials read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Credentials(
      sonarrUrl: fields[0] as String?,
      sonarrApi: fields[1] as String?,
      radarrUrl: fields[2] as String?,
      radarrApi: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Credentials obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.sonarrUrl)
      ..writeByte(1)
      ..write(obj.sonarrApi)
      ..writeByte(2)
      ..write(obj.radarrUrl)
      ..writeByte(3)
      ..write(obj.radarrApi);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CredentialsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
