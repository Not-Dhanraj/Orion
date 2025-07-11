// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  originalTitle: json['originalTitle'] as String,
  overview: json['overview'] as String,
  genres: (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
  year: (json['year'] as num).toInt(),
  runtime: (json['runtime'] as num).toInt(),
  status: json['status'] as String,
  movieStatus: $enumDecode(_$MovieStatusEnumMap, json['movieStatus']),
  digitalRelease: DateTime.parse(json['digitalRelease'] as String),
  certification: json['certification'] as String,
  youTubeTrailerId: json['youTubeTrailerId'] as String,
  studio: json['studio'] as String,
  hasFile: json['hasFile'] as bool,
  isAvailable: json['isAvailable'] as bool,
  monitored: json['monitored'] as bool,
  path: json['path'] as String,
  qualityProfileId: (json['qualityProfileId'] as num).toInt(),
  minimumAvailability: (json['minimumAvailability'] as num).toInt(),
);

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'genres': instance.genres,
      'year': instance.year,
      'runtime': instance.runtime,
      'status': instance.status,
      'movieStatus': _$MovieStatusEnumMap[instance.movieStatus]!,
      'digitalRelease': instance.digitalRelease.toIso8601String(),
      'certification': instance.certification,
      'youTubeTrailerId': instance.youTubeTrailerId,
      'studio': instance.studio,
      'hasFile': instance.hasFile,
      'isAvailable': instance.isAvailable,
      'monitored': instance.monitored,
      'path': instance.path,
      'qualityProfileId': instance.qualityProfileId,
      'minimumAvailability': instance.minimumAvailability,
    };

const _$MovieStatusEnumMap = {
  MovieStatus.tba: 'tba',
  MovieStatus.announced: 'announced',
  MovieStatus.inCinemas: 'inCinemas',
  MovieStatus.released: 'released',
  MovieStatus.deleted: 'deleted',
};
