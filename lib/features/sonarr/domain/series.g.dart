// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesImpl _$$SeriesImplFromJson(Map<String, dynamic> json) => _$SeriesImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  overview: json['overview'] as String,
  status: json['status'] as String,
  previousAiring: DateTime.parse(json['previousAiring'] as String),
  nextAiring: DateTime.parse(json['nextAiring'] as String),
  network: json['network'] as String,
  remotePoster: json['remotePoster'] as String,
  seasons: (json['seasons'] as List<dynamic>)
      .map((e) => Season.fromJson(e as Map<String, dynamic>))
      .toList(),
  year: (json['year'] as num).toInt(),
  path: json['path'] as String,
  qualityProfileId: (json['qualityProfileId'] as num).toInt(),
  seasonFolder: json['seasonFolder'] as bool,
  monitored: json['monitored'] as bool,
  useSceneNumbering: json['useSceneNumbering'] as bool,
  seriesType: (json['seriesType'] as num).toInt(),
);

Map<String, dynamic> _$$SeriesImplToJson(_$SeriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'status': instance.status,
      'previousAiring': instance.previousAiring.toIso8601String(),
      'nextAiring': instance.nextAiring.toIso8601String(),
      'network': instance.network,
      'remotePoster': instance.remotePoster,
      'seasons': instance.seasons,
      'year': instance.year,
      'path': instance.path,
      'qualityProfileId': instance.qualityProfileId,
      'seasonFolder': instance.seasonFolder,
      'monitored': instance.monitored,
      'useSceneNumbering': instance.useSceneNumbering,
      'seriesType': instance.seriesType,
    };
