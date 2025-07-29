//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/field.dart';
import 'package:sonarr/src/model/provider_message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/download_protocol.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexer_resource.g.dart';

/// IndexerResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [fields]
/// * [implementationName]
/// * [implementation]
/// * [configContract]
/// * [infoLink]
/// * [message]
/// * [tags]
/// * [presets]
/// * [enableRss]
/// * [enableAutomaticSearch]
/// * [enableInteractiveSearch]
/// * [supportsRss]
/// * [supportsSearch]
/// * [protocol]
/// * [priority]
/// * [seasonSearchMaximumSingleEpisodeAge]
/// * [downloadClientId]
@BuiltValue()
abstract class IndexerResource
    implements Built<IndexerResource, IndexerResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'fields')
  BuiltList<Field>? get fields;

  @BuiltValueField(wireName: r'implementationName')
  String? get implementationName;

  @BuiltValueField(wireName: r'implementation')
  String? get implementation;

  @BuiltValueField(wireName: r'configContract')
  String? get configContract;

  @BuiltValueField(wireName: r'infoLink')
  String? get infoLink;

  @BuiltValueField(wireName: r'message')
  ProviderMessage? get message;

  @BuiltValueField(wireName: r'tags')
  BuiltSet<int>? get tags;

  @BuiltValueField(wireName: r'presets')
  BuiltList<IndexerResource>? get presets;

  @BuiltValueField(wireName: r'enableRss')
  bool? get enableRss;

  @BuiltValueField(wireName: r'enableAutomaticSearch')
  bool? get enableAutomaticSearch;

  @BuiltValueField(wireName: r'enableInteractiveSearch')
  bool? get enableInteractiveSearch;

  @BuiltValueField(wireName: r'supportsRss')
  bool? get supportsRss;

  @BuiltValueField(wireName: r'supportsSearch')
  bool? get supportsSearch;

  @BuiltValueField(wireName: r'protocol')
  DownloadProtocol? get protocol;
  // enum protocolEnum {  unknown,  usenet,  torrent,  };

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  @BuiltValueField(wireName: r'seasonSearchMaximumSingleEpisodeAge')
  int? get seasonSearchMaximumSingleEpisodeAge;

  @BuiltValueField(wireName: r'downloadClientId')
  int? get downloadClientId;

  IndexerResource._();

  factory IndexerResource([void updates(IndexerResourceBuilder b)]) =
      _$IndexerResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexerResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexerResource> get serializer =>
      _$IndexerResourceSerializer();
}

class _$IndexerResourceSerializer
    implements PrimitiveSerializer<IndexerResource> {
  @override
  final Iterable<Type> types = const [IndexerResource, _$IndexerResource];

  @override
  final String wireName = r'IndexerResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexerResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Field)]),
      );
    }
    if (object.implementationName != null) {
      yield r'implementationName';
      yield serializers.serialize(
        object.implementationName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.implementation != null) {
      yield r'implementation';
      yield serializers.serialize(
        object.implementation,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.configContract != null) {
      yield r'configContract';
      yield serializers.serialize(
        object.configContract,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.infoLink != null) {
      yield r'infoLink';
      yield serializers.serialize(
        object.infoLink,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(ProviderMessage),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
      );
    }
    if (object.presets != null) {
      yield r'presets';
      yield serializers.serialize(
        object.presets,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(IndexerResource)]),
      );
    }
    if (object.enableRss != null) {
      yield r'enableRss';
      yield serializers.serialize(
        object.enableRss,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enableAutomaticSearch != null) {
      yield r'enableAutomaticSearch';
      yield serializers.serialize(
        object.enableAutomaticSearch,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enableInteractiveSearch != null) {
      yield r'enableInteractiveSearch';
      yield serializers.serialize(
        object.enableInteractiveSearch,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsRss != null) {
      yield r'supportsRss';
      yield serializers.serialize(
        object.supportsRss,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsSearch != null) {
      yield r'supportsSearch';
      yield serializers.serialize(
        object.supportsSearch,
        specifiedType: const FullType(bool),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(DownloadProtocol),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(int),
      );
    }
    if (object.seasonSearchMaximumSingleEpisodeAge != null) {
      yield r'seasonSearchMaximumSingleEpisodeAge';
      yield serializers.serialize(
        object.seasonSearchMaximumSingleEpisodeAge,
        specifiedType: const FullType(int),
      );
    }
    if (object.downloadClientId != null) {
      yield r'downloadClientId';
      yield serializers.serialize(
        object.downloadClientId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexerResource object, {
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
    required IndexerResourceBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Field)]),
          ) as BuiltList<Field>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'implementationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.implementationName = valueDes;
          break;
        case r'implementation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.implementation = valueDes;
          break;
        case r'configContract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.configContract = valueDes;
          break;
        case r'infoLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.infoLink = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProviderMessage),
          ) as ProviderMessage;
          result.message.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
          ) as BuiltSet<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'presets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(IndexerResource)]),
          ) as BuiltList<IndexerResource>?;
          if (valueDes == null) continue;
          result.presets.replace(valueDes);
          break;
        case r'enableRss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableRss = valueDes;
          break;
        case r'enableAutomaticSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableAutomaticSearch = valueDes;
          break;
        case r'enableInteractiveSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableInteractiveSearch = valueDes;
          break;
        case r'supportsRss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsRss = valueDes;
          break;
        case r'supportsSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsSearch = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DownloadProtocol),
          ) as DownloadProtocol;
          result.protocol = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priority = valueDes;
          break;
        case r'seasonSearchMaximumSingleEpisodeAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonSearchMaximumSingleEpisodeAge = valueDes;
          break;
        case r'downloadClientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.downloadClientId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexerResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexerResourceBuilder();
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
