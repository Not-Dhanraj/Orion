//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexer_config_resource.g.dart';

/// IndexerConfigResource
///
/// Properties:
/// * [id]
/// * [minimumAge]
/// * [maximumSize]
/// * [retention]
/// * [rssSyncInterval]
/// * [preferIndexerFlags]
/// * [availabilityDelay]
/// * [allowHardcodedSubs]
/// * [whitelistedHardcodedSubs]
@BuiltValue()
abstract class IndexerConfigResource
    implements Built<IndexerConfigResource, IndexerConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'minimumAge')
  int? get minimumAge;

  @BuiltValueField(wireName: r'maximumSize')
  int? get maximumSize;

  @BuiltValueField(wireName: r'retention')
  int? get retention;

  @BuiltValueField(wireName: r'rssSyncInterval')
  int? get rssSyncInterval;

  @BuiltValueField(wireName: r'preferIndexerFlags')
  bool? get preferIndexerFlags;

  @BuiltValueField(wireName: r'availabilityDelay')
  int? get availabilityDelay;

  @BuiltValueField(wireName: r'allowHardcodedSubs')
  bool? get allowHardcodedSubs;

  @BuiltValueField(wireName: r'whitelistedHardcodedSubs')
  String? get whitelistedHardcodedSubs;

  IndexerConfigResource._();

  factory IndexerConfigResource(
      [void updates(IndexerConfigResourceBuilder b)]) = _$IndexerConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexerConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexerConfigResource> get serializer =>
      _$IndexerConfigResourceSerializer();
}

class _$IndexerConfigResourceSerializer
    implements PrimitiveSerializer<IndexerConfigResource> {
  @override
  final Iterable<Type> types = const [
    IndexerConfigResource,
    _$IndexerConfigResource
  ];

  @override
  final String wireName = r'IndexerConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexerConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.minimumAge != null) {
      yield r'minimumAge';
      yield serializers.serialize(
        object.minimumAge,
        specifiedType: const FullType(int),
      );
    }
    if (object.maximumSize != null) {
      yield r'maximumSize';
      yield serializers.serialize(
        object.maximumSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.retention != null) {
      yield r'retention';
      yield serializers.serialize(
        object.retention,
        specifiedType: const FullType(int),
      );
    }
    if (object.rssSyncInterval != null) {
      yield r'rssSyncInterval';
      yield serializers.serialize(
        object.rssSyncInterval,
        specifiedType: const FullType(int),
      );
    }
    if (object.preferIndexerFlags != null) {
      yield r'preferIndexerFlags';
      yield serializers.serialize(
        object.preferIndexerFlags,
        specifiedType: const FullType(bool),
      );
    }
    if (object.availabilityDelay != null) {
      yield r'availabilityDelay';
      yield serializers.serialize(
        object.availabilityDelay,
        specifiedType: const FullType(int),
      );
    }
    if (object.allowHardcodedSubs != null) {
      yield r'allowHardcodedSubs';
      yield serializers.serialize(
        object.allowHardcodedSubs,
        specifiedType: const FullType(bool),
      );
    }
    if (object.whitelistedHardcodedSubs != null) {
      yield r'whitelistedHardcodedSubs';
      yield serializers.serialize(
        object.whitelistedHardcodedSubs,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexerConfigResource object, {
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
    required IndexerConfigResourceBuilder result,
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
        case r'minimumAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minimumAge = valueDes;
          break;
        case r'maximumSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maximumSize = valueDes;
          break;
        case r'retention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.retention = valueDes;
          break;
        case r'rssSyncInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rssSyncInterval = valueDes;
          break;
        case r'preferIndexerFlags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.preferIndexerFlags = valueDes;
          break;
        case r'availabilityDelay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availabilityDelay = valueDes;
          break;
        case r'allowHardcodedSubs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowHardcodedSubs = valueDes;
          break;
        case r'whitelistedHardcodedSubs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.whitelistedHardcodedSubs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexerConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexerConfigResourceBuilder();
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
