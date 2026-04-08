import 'dart:convert';
import 'package:radarr/radarr.dart' as radarr;
import 'package:sonarr/sonarr.dart' as sonarr;

class ExtraCodec extends Codec<Object?, Object?> {
  const ExtraCodec();

  static const _typeMovieResource = 'MovieResource';
  static const _typeSeriesResource = 'SeriesResource';

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
      return {
        '__type': ExtraCodec._typeMovieResource,
        'data': radarr.standardSerializers.serializeWith(
          radarr.MovieResource.serializer,
          input,
        ),
      };
    }

    if (input is sonarr.SeriesResource) {
      return {
        '__type': ExtraCodec._typeSeriesResource,
        'data': sonarr.standardSerializers.serializeWith(
          sonarr.SeriesResource.serializer,
          input,
        ),
      };
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
        return radarr.standardSerializers.deserializeWith(
          radarr.MovieResource.serializer,
          data,
        );
      }

      if (type == ExtraCodec._typeSeriesResource) {
        return sonarr.standardSerializers.deserializeWith(
          sonarr.SeriesResource.serializer,
          data,
        );
      }
    }

    return input;
  }
}
