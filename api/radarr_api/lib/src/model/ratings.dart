//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/rating_child.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ratings.g.dart';

/// Ratings
///
/// Properties:
/// * [imdb]
/// * [tmdb]
/// * [metacritic]
/// * [rottenTomatoes]
/// * [trakt]
@BuiltValue()
abstract class Ratings implements Built<Ratings, RatingsBuilder> {
  @BuiltValueField(wireName: r'imdb')
  RatingChild? get imdb;

  @BuiltValueField(wireName: r'tmdb')
  RatingChild? get tmdb;

  @BuiltValueField(wireName: r'metacritic')
  RatingChild? get metacritic;

  @BuiltValueField(wireName: r'rottenTomatoes')
  RatingChild? get rottenTomatoes;

  @BuiltValueField(wireName: r'trakt')
  RatingChild? get trakt;

  Ratings._();

  factory Ratings([void updates(RatingsBuilder b)]) = _$Ratings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Ratings> get serializer => _$RatingsSerializer();
}

class _$RatingsSerializer implements PrimitiveSerializer<Ratings> {
  @override
  final Iterable<Type> types = const [Ratings, _$Ratings];

  @override
  final String wireName = r'Ratings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Ratings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.imdb != null) {
      yield r'imdb';
      yield serializers.serialize(
        object.imdb,
        specifiedType: const FullType(RatingChild),
      );
    }
    if (object.tmdb != null) {
      yield r'tmdb';
      yield serializers.serialize(
        object.tmdb,
        specifiedType: const FullType(RatingChild),
      );
    }
    if (object.metacritic != null) {
      yield r'metacritic';
      yield serializers.serialize(
        object.metacritic,
        specifiedType: const FullType(RatingChild),
      );
    }
    if (object.rottenTomatoes != null) {
      yield r'rottenTomatoes';
      yield serializers.serialize(
        object.rottenTomatoes,
        specifiedType: const FullType(RatingChild),
      );
    }
    if (object.trakt != null) {
      yield r'trakt';
      yield serializers.serialize(
        object.trakt,
        specifiedType: const FullType(RatingChild),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Ratings object, {
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
    required RatingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imdb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingChild),
          ) as RatingChild;
          result.imdb.replace(valueDes);
          break;
        case r'tmdb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingChild),
          ) as RatingChild;
          result.tmdb.replace(valueDes);
          break;
        case r'metacritic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingChild),
          ) as RatingChild;
          result.metacritic.replace(valueDes);
          break;
        case r'rottenTomatoes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingChild),
          ) as RatingChild;
          result.rottenTomatoes.replace(valueDes);
          break;
        case r'trakt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingChild),
          ) as RatingChild;
          result.trakt.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Ratings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingsBuilder();
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
