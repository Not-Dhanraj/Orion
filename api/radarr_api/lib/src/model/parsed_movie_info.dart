//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/quality_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parsed_movie_info.g.dart';

/// ParsedMovieInfo
///
/// Properties:
/// * [movieTitles]
/// * [originalTitle]
/// * [releaseTitle]
/// * [simpleReleaseTitle]
/// * [quality]
/// * [languages]
/// * [releaseGroup]
/// * [releaseHash]
/// * [edition]
/// * [year]
/// * [imdbId]
/// * [tmdbId]
/// * [hardcodedSubs]
/// * [movieTitle]
/// * [primaryMovieTitle]
@BuiltValue()
abstract class ParsedMovieInfo
    implements Built<ParsedMovieInfo, ParsedMovieInfoBuilder> {
  @BuiltValueField(wireName: r'movieTitles')
  BuiltList<String>? get movieTitles;

  @BuiltValueField(wireName: r'originalTitle')
  String? get originalTitle;

  @BuiltValueField(wireName: r'releaseTitle')
  String? get releaseTitle;

  @BuiltValueField(wireName: r'simpleReleaseTitle')
  String? get simpleReleaseTitle;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  @BuiltValueField(wireName: r'releaseHash')
  String? get releaseHash;

  @BuiltValueField(wireName: r'edition')
  String? get edition;

  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'imdbId')
  String? get imdbId;

  @BuiltValueField(wireName: r'tmdbId')
  int? get tmdbId;

  @BuiltValueField(wireName: r'hardcodedSubs')
  String? get hardcodedSubs;

  @BuiltValueField(wireName: r'movieTitle')
  String? get movieTitle;

  @BuiltValueField(wireName: r'primaryMovieTitle')
  String? get primaryMovieTitle;

  ParsedMovieInfo._();

  factory ParsedMovieInfo([void updates(ParsedMovieInfoBuilder b)]) =
      _$ParsedMovieInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParsedMovieInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParsedMovieInfo> get serializer =>
      _$ParsedMovieInfoSerializer();
}

class _$ParsedMovieInfoSerializer
    implements PrimitiveSerializer<ParsedMovieInfo> {
  @override
  final Iterable<Type> types = const [ParsedMovieInfo, _$ParsedMovieInfo];

  @override
  final String wireName = r'ParsedMovieInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParsedMovieInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.movieTitles != null) {
      yield r'movieTitles';
      yield serializers.serialize(
        object.movieTitles,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.originalTitle != null) {
      yield r'originalTitle';
      yield serializers.serialize(
        object.originalTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseTitle != null) {
      yield r'releaseTitle';
      yield serializers.serialize(
        object.releaseTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.simpleReleaseTitle != null) {
      yield r'simpleReleaseTitle';
      yield serializers.serialize(
        object.simpleReleaseTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(QualityModel),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.releaseGroup != null) {
      yield r'releaseGroup';
      yield serializers.serialize(
        object.releaseGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseHash != null) {
      yield r'releaseHash';
      yield serializers.serialize(
        object.releaseHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.edition != null) {
      yield r'edition';
      yield serializers.serialize(
        object.edition,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.imdbId != null) {
      yield r'imdbId';
      yield serializers.serialize(
        object.imdbId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tmdbId != null) {
      yield r'tmdbId';
      yield serializers.serialize(
        object.tmdbId,
        specifiedType: const FullType(int),
      );
    }
    if (object.hardcodedSubs != null) {
      yield r'hardcodedSubs';
      yield serializers.serialize(
        object.hardcodedSubs,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.movieTitle != null) {
      yield r'movieTitle';
      yield serializers.serialize(
        object.movieTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.primaryMovieTitle != null) {
      yield r'primaryMovieTitle';
      yield serializers.serialize(
        object.primaryMovieTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParsedMovieInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParsedMovieInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'movieTitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.movieTitles.replace(valueDes);
          break;
        case r'originalTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originalTitle = valueDes;
          break;
        case r'releaseTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseTitle = valueDes;
          break;
        case r'simpleReleaseTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.simpleReleaseTitle = valueDes;
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualityModel),
          ) as QualityModel;
          result.quality.replace(valueDes);
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Language)]),
          ) as BuiltList<Language>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
          break;
        case r'releaseHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseHash = valueDes;
          break;
        case r'edition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edition = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'imdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imdbId = valueDes;
          break;
        case r'tmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tmdbId = valueDes;
          break;
        case r'hardcodedSubs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hardcodedSubs = valueDes;
          break;
        case r'movieTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.movieTitle = valueDes;
          break;
        case r'primaryMovieTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.primaryMovieTitle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParsedMovieInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParsedMovieInfoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
