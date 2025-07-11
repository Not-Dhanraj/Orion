import 'package:client/features/radarr/domain/movie_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MovieStatusConverter implements JsonConverter<MovieStatus, String> {
  const MovieStatusConverter();

  @override
  MovieStatus fromJson(String json) {
    return MovieStatus.values.firstWhere(
      (e) => e.toString() == 'MovieStatus.$json',
      orElse: () => MovieStatus.tba,
    );
  }

  @override
  String toJson(MovieStatus object) {
    return object.toString().split('.').last;
  }
}
