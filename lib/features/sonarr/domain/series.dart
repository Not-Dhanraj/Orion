import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:client/features/sonarr/domain/season.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  const factory Series({
    required int id,
    required String title,
    required String overview,
    required String status,
    required DateTime previousAiring,
    required DateTime nextAiring,
    required String network,
    required String remotePoster,
    required List<Season> seasons,
    required int year,
    required String path,
    required int qualityProfileId,
    required bool seasonFolder,
    required bool monitored,
    required bool useSceneNumbering,
    required int seriesType,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}
