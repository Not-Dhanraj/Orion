//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/media_cover_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_cover.g.dart';

/// MediaCover
///
/// Properties:
/// * [coverType]
/// * [url]
/// * [remoteUrl]
@BuiltValue()
abstract class MediaCover implements Built<MediaCover, MediaCoverBuilder> {
  @BuiltValueField(wireName: r'coverType')
  MediaCoverTypes? get coverType;
  // enum coverTypeEnum {  unknown,  poster,  banner,  fanart,  screenshot,  headshot,  clearlogo,  };

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'remoteUrl')
  String? get remoteUrl;

  MediaCover._();

  factory MediaCover([void updates(MediaCoverBuilder b)]) = _$MediaCover;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaCoverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaCover> get serializer => _$MediaCoverSerializer();
}

class _$MediaCoverSerializer implements PrimitiveSerializer<MediaCover> {
  @override
  final Iterable<Type> types = const [MediaCover, _$MediaCover];

  @override
  final String wireName = r'MediaCover';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaCover object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.coverType != null) {
      yield r'coverType';
      yield serializers.serialize(
        object.coverType,
        specifiedType: const FullType(MediaCoverTypes),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remoteUrl != null) {
      yield r'remoteUrl';
      yield serializers.serialize(
        object.remoteUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaCover object, {
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
    required MediaCoverBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'coverType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaCoverTypes),
          ) as MediaCoverTypes;
          result.coverType = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'remoteUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remoteUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaCover deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaCoverBuilder();
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
