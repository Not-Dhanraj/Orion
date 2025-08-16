//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/download_protocol.dart';
import 'package:radarr/src/model/quality_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/language.dart';
import 'package:radarr/src/model/movie_resource.dart';
import 'package:radarr/src/model/custom_format_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blocklist_resource.g.dart';

/// BlocklistResource
///
/// Properties:
/// * [id]
/// * [movieId]
/// * [sourceTitle]
/// * [languages]
/// * [quality]
/// * [customFormats]
/// * [date]
/// * [protocol]
/// * [indexer]
/// * [message]
/// * [movie]
@BuiltValue()
abstract class BlocklistResource
    implements Built<BlocklistResource, BlocklistResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'movieId')
  int? get movieId;

  @BuiltValueField(wireName: r'sourceTitle')
  String? get sourceTitle;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'date')
  DateTime? get date;

  @BuiltValueField(wireName: r'protocol')
  DownloadProtocol? get protocol;
  // enum protocolEnum {  unknown,  usenet,  torrent,  };

  @BuiltValueField(wireName: r'indexer')
  String? get indexer;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'movie')
  MovieResource? get movie;

  BlocklistResource._();

  factory BlocklistResource([void updates(BlocklistResourceBuilder b)]) =
      _$BlocklistResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlocklistResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlocklistResource> get serializer =>
      _$BlocklistResourceSerializer();
}

class _$BlocklistResourceSerializer
    implements PrimitiveSerializer<BlocklistResource> {
  @override
  final Iterable<Type> types = const [BlocklistResource, _$BlocklistResource];

  @override
  final String wireName = r'BlocklistResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlocklistResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.movieId != null) {
      yield r'movieId';
      yield serializers.serialize(
        object.movieId,
        specifiedType: const FullType(int),
      );
    }
    if (object.sourceTitle != null) {
      yield r'sourceTitle';
      yield serializers.serialize(
        object.sourceTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(QualityModel),
      );
    }
    if (object.customFormats != null) {
      yield r'customFormats';
      yield serializers.serialize(
        object.customFormats,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(CustomFormatResource)]),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(DownloadProtocol),
      );
    }
    if (object.indexer != null) {
      yield r'indexer';
      yield serializers.serialize(
        object.indexer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.movie != null) {
      yield r'movie';
      yield serializers.serialize(
        object.movie,
        specifiedType: const FullType(MovieResource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BlocklistResource object, {
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
    required BlocklistResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'movieId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movieId = valueDes;
          break;
        case r'sourceTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceTitle = valueDes;
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
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualityModel),
          ) as QualityModel;
          result.quality.replace(valueDes);
          break;
        case r'customFormats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CustomFormatResource)]),
          ) as BuiltList<CustomFormatResource>?;
          if (valueDes == null) continue;
          result.customFormats.replace(valueDes);
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DownloadProtocol),
          ) as DownloadProtocol;
          result.protocol = valueDes;
          break;
        case r'indexer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexer = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'movie':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieResource),
          ) as MovieResource;
          result.movie.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BlocklistResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlocklistResourceBuilder();
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
