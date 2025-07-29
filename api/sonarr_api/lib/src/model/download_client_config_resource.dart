//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_client_config_resource.g.dart';

/// DownloadClientConfigResource
///
/// Properties:
/// * [id]
/// * [downloadClientWorkingFolders]
/// * [enableCompletedDownloadHandling]
/// * [autoRedownloadFailed]
/// * [autoRedownloadFailedFromInteractiveSearch]
@BuiltValue()
abstract class DownloadClientConfigResource
    implements
        Built<DownloadClientConfigResource,
            DownloadClientConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'downloadClientWorkingFolders')
  String? get downloadClientWorkingFolders;

  @BuiltValueField(wireName: r'enableCompletedDownloadHandling')
  bool? get enableCompletedDownloadHandling;

  @BuiltValueField(wireName: r'autoRedownloadFailed')
  bool? get autoRedownloadFailed;

  @BuiltValueField(wireName: r'autoRedownloadFailedFromInteractiveSearch')
  bool? get autoRedownloadFailedFromInteractiveSearch;

  DownloadClientConfigResource._();

  factory DownloadClientConfigResource(
          [void updates(DownloadClientConfigResourceBuilder b)]) =
      _$DownloadClientConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DownloadClientConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DownloadClientConfigResource> get serializer =>
      _$DownloadClientConfigResourceSerializer();
}

class _$DownloadClientConfigResourceSerializer
    implements PrimitiveSerializer<DownloadClientConfigResource> {
  @override
  final Iterable<Type> types = const [
    DownloadClientConfigResource,
    _$DownloadClientConfigResource
  ];

  @override
  final String wireName = r'DownloadClientConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DownloadClientConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.downloadClientWorkingFolders != null) {
      yield r'downloadClientWorkingFolders';
      yield serializers.serialize(
        object.downloadClientWorkingFolders,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.enableCompletedDownloadHandling != null) {
      yield r'enableCompletedDownloadHandling';
      yield serializers.serialize(
        object.enableCompletedDownloadHandling,
        specifiedType: const FullType(bool),
      );
    }
    if (object.autoRedownloadFailed != null) {
      yield r'autoRedownloadFailed';
      yield serializers.serialize(
        object.autoRedownloadFailed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.autoRedownloadFailedFromInteractiveSearch != null) {
      yield r'autoRedownloadFailedFromInteractiveSearch';
      yield serializers.serialize(
        object.autoRedownloadFailedFromInteractiveSearch,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DownloadClientConfigResource object, {
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
    required DownloadClientConfigResourceBuilder result,
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
        case r'downloadClientWorkingFolders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadClientWorkingFolders = valueDes;
          break;
        case r'enableCompletedDownloadHandling':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableCompletedDownloadHandling = valueDes;
          break;
        case r'autoRedownloadFailed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRedownloadFailed = valueDes;
          break;
        case r'autoRedownloadFailedFromInteractiveSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRedownloadFailedFromInteractiveSearch = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DownloadClientConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DownloadClientConfigResourceBuilder();
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
