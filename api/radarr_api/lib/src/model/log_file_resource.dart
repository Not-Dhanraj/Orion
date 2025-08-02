//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'log_file_resource.g.dart';

/// LogFileResource
///
/// Properties:
/// * [id]
/// * [filename]
/// * [lastWriteTime]
/// * [contentsUrl]
/// * [downloadUrl]
@BuiltValue()
abstract class LogFileResource
    implements Built<LogFileResource, LogFileResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'filename')
  String? get filename;

  @BuiltValueField(wireName: r'lastWriteTime')
  DateTime? get lastWriteTime;

  @BuiltValueField(wireName: r'contentsUrl')
  String? get contentsUrl;

  @BuiltValueField(wireName: r'downloadUrl')
  String? get downloadUrl;

  LogFileResource._();

  factory LogFileResource([void updates(LogFileResourceBuilder b)]) =
      _$LogFileResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogFileResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogFileResource> get serializer =>
      _$LogFileResourceSerializer();
}

class _$LogFileResourceSerializer
    implements PrimitiveSerializer<LogFileResource> {
  @override
  final Iterable<Type> types = const [LogFileResource, _$LogFileResource];

  @override
  final String wireName = r'LogFileResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogFileResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.filename != null) {
      yield r'filename';
      yield serializers.serialize(
        object.filename,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastWriteTime != null) {
      yield r'lastWriteTime';
      yield serializers.serialize(
        object.lastWriteTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.contentsUrl != null) {
      yield r'contentsUrl';
      yield serializers.serialize(
        object.contentsUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.downloadUrl != null) {
      yield r'downloadUrl';
      yield serializers.serialize(
        object.downloadUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogFileResource object, {
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
    required LogFileResourceBuilder result,
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
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.filename = valueDes;
          break;
        case r'lastWriteTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastWriteTime = valueDes;
          break;
        case r'contentsUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentsUrl = valueDes;
          break;
        case r'downloadUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LogFileResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogFileResourceBuilder();
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
