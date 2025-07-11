// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonImpl _$$SeasonImplFromJson(Map<String, dynamic> json) => _$SeasonImpl(
  seasonNumber: (json['seasonNumber'] as num).toInt(),
  monitored: json['monitored'] as bool,
);

Map<String, dynamic> _$$SeasonImplToJson(_$SeasonImpl instance) =>
    <String, dynamic>{
      'seasonNumber': instance.seasonNumber,
      'monitored': instance.monitored,
    };
