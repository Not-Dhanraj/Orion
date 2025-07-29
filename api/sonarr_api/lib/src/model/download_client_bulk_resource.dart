//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/apply_tags.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_client_bulk_resource.g.dart';

/// DownloadClientBulkResource
///
/// Properties:
/// * [ids]
/// * [tags]
/// * [applyTags]
/// * [enable]
/// * [priority]
/// * [removeCompletedDownloads]
/// * [removeFailedDownloads]
@BuiltValue()
abstract class DownloadClientBulkResource
    implements
        Built<DownloadClientBulkResource, DownloadClientBulkResourceBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<int>? get ids;

  @BuiltValueField(wireName: r'tags')
  BuiltList<int>? get tags;

  @BuiltValueField(wireName: r'applyTags')
  ApplyTags? get applyTags;
  // enum applyTagsEnum {  add,  remove,  replace,  };

  @BuiltValueField(wireName: r'enable')
  bool? get enable;

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  @BuiltValueField(wireName: r'removeCompletedDownloads')
  bool? get removeCompletedDownloads;

  @BuiltValueField(wireName: r'removeFailedDownloads')
  bool? get removeFailedDownloads;

  DownloadClientBulkResource._();

  factory DownloadClientBulkResource(
          [void updates(DownloadClientBulkResourceBuilder b)]) =
      _$DownloadClientBulkResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DownloadClientBulkResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DownloadClientBulkResource> get serializer =>
      _$DownloadClientBulkResourceSerializer();
}

class _$DownloadClientBulkResourceSerializer
    implements PrimitiveSerializer<DownloadClientBulkResource> {
  @override
  final Iterable<Type> types = const [
    DownloadClientBulkResource,
    _$DownloadClientBulkResource
  ];

  @override
  final String wireName = r'DownloadClientBulkResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DownloadClientBulkResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.applyTags != null) {
      yield r'applyTags';
      yield serializers.serialize(
        object.applyTags,
        specifiedType: const FullType(ApplyTags),
      );
    }
    if (object.enable != null) {
      yield r'enable';
      yield serializers.serialize(
        object.enable,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.removeCompletedDownloads != null) {
      yield r'removeCompletedDownloads';
      yield serializers.serialize(
        object.removeCompletedDownloads,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.removeFailedDownloads != null) {
      yield r'removeFailedDownloads';
      yield serializers.serialize(
        object.removeFailedDownloads,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DownloadClientBulkResource object, {
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
    required DownloadClientBulkResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.ids.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'applyTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApplyTags),
          ) as ApplyTags;
          result.applyTags = valueDes;
          break;
        case r'enable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enable = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.priority = valueDes;
          break;
        case r'removeCompletedDownloads':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.removeCompletedDownloads = valueDes;
          break;
        case r'removeFailedDownloads':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.removeFailedDownloads = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DownloadClientBulkResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DownloadClientBulkResourceBuilder();
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
