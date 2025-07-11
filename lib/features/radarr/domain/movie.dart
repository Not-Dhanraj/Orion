import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:client/features/radarr/domain/movie_status.dart';
import 'package:client/features/radarr/domain/movie_status_converter.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    required String originalTitle,
    required String overview,
    required List<String> genres,
    required int year,
    required int runtime,
    required String status,
    @MovieStatusConverter() required MovieStatus movieStatus,
    required DateTime digitalRelease,
    required String certification,
    required String youTubeTrailerId,
    required String studio,
    required bool hasFile,
    required bool isAvailable,
    required bool monitored,
    required String path,
    required int qualityProfileId,
    required int minimumAvailability,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
