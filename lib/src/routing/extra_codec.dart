import 'dart:convert';
import 'package:radarr_api/radarr_api.dart' as radarr;
import 'package:sonarr_api/sonarr_api.dart' as sonarr;
import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';

class ExtraCodec extends Codec<Object?, Object?> {
  const ExtraCodec();

  static const _typeMovieResource = 'MovieResource';
  static const _typeSeriesResource = 'SeriesResource';
  static const _typeJellyfinMatch = 'JellyfinMatchResult';

  @override
  Converter<Object?, Object?> get decoder => const _ExtraDecoder();

  @override
  Converter<Object?, Object?> get encoder => const _ExtraEncoder();
}

class _ExtraEncoder extends Converter<Object?, Object?> {
  const _ExtraEncoder();

  @override
  Object? convert(Object? input) {
    if (input == null) return null;

    if (input is radarr.MovieResource) {
      return {'__type': ExtraCodec._typeMovieResource, 'data': input.toJson()};
    }

    if (input is sonarr.SeriesResource) {
      return {'__type': ExtraCodec._typeSeriesResource, 'data': input.toJson()};
    }

    if (input is JellyfinMatchResult) {
      return {'__type': ExtraCodec._typeJellyfinMatch, 'data': input.toJson()};
    }

    if (input is Map ||
        input is Iterable ||
        input is String ||
        input is num ||
        input is bool) {
      return input;
    }

    throw ArgumentError(
      'Unsupported type for ExtraCodec encoder: ${input.runtimeType}',
    );
  }
}

class _ExtraDecoder extends Converter<Object?, Object?> {
  const _ExtraDecoder();

  @override
  Object? convert(Object? input) {
    if (input == null) return null;

    if (input is Map) {
      final type = input['__type'];
      final data = input['data'];

      if (type == ExtraCodec._typeMovieResource) {
        if (data is Map) {
          return radarr.MovieResource.fromJson(Map<String, dynamic>.from(data));
        }
        return null;
      }

      if (type == ExtraCodec._typeSeriesResource) {
        if (data is Map) {
          return sonarr.SeriesResource.fromJson(
            Map<String, dynamic>.from(data),
          );
        }
        return null;
      }

      if (type == ExtraCodec._typeJellyfinMatch) {
        if (data is Map) {
          return JellyfinMatchResult.fromJson(
            Map<String, dynamic>.from(data),
          );
        }
        return null;
      }
    }

    return input;
  }
}
