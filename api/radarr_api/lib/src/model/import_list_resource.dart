//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/movie_status_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/import_list_type.dart';
import 'package:radarr/src/model/field.dart';
import 'package:radarr/src/model/monitor_types.dart';
import 'package:radarr/src/model/provider_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_list_resource.g.dart';

/// ImportListResource
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
/// * [enabled]
/// * [enableAuto]
/// * [monitor]
/// * [rootFolderPath]
/// * [qualityProfileId]
/// * [searchOnAdd]
/// * [minimumAvailability]
/// * [listType]
/// * [listOrder]
/// * [minRefreshInterval]
@BuiltValue()
abstract class ImportListResource
    implements Built<ImportListResource, ImportListResourceBuilder> {
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
  BuiltList<ImportListResource>? get presets;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'enableAuto')
  bool? get enableAuto;

  @BuiltValueField(wireName: r'monitor')
  MonitorTypes? get monitor;
  // enum monitorEnum {  movieOnly,  movieAndCollection,  none,  };

  @BuiltValueField(wireName: r'rootFolderPath')
  String? get rootFolderPath;

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  @BuiltValueField(wireName: r'searchOnAdd')
  bool? get searchOnAdd;

  @BuiltValueField(wireName: r'minimumAvailability')
  MovieStatusType? get minimumAvailability;
  // enum minimumAvailabilityEnum {  tba,  announced,  inCinemas,  released,  deleted,  };

  @BuiltValueField(wireName: r'listType')
  ImportListType? get listType;
  // enum listTypeEnum {  program,  tmdb,  trakt,  plex,  simkl,  other,  advanced,  };

  @BuiltValueField(wireName: r'listOrder')
  int? get listOrder;

  @BuiltValueField(wireName: r'minRefreshInterval')
  String? get minRefreshInterval;

  ImportListResource._();

  factory ImportListResource([void updates(ImportListResourceBuilder b)]) =
      _$ImportListResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportListResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportListResource> get serializer =>
      _$ImportListResourceSerializer();
}

class _$ImportListResourceSerializer
    implements PrimitiveSerializer<ImportListResource> {
  @override
  final Iterable<Type> types = const [ImportListResource, _$ImportListResource];

  @override
  final String wireName = r'ImportListResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportListResource object, {
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
            const FullType.nullable(BuiltList, [FullType(ImportListResource)]),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enableAuto != null) {
      yield r'enableAuto';
      yield serializers.serialize(
        object.enableAuto,
        specifiedType: const FullType(bool),
      );
    }
    if (object.monitor != null) {
      yield r'monitor';
      yield serializers.serialize(
        object.monitor,
        specifiedType: const FullType(MonitorTypes),
      );
    }
    if (object.rootFolderPath != null) {
      yield r'rootFolderPath';
      yield serializers.serialize(
        object.rootFolderPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.qualityProfileId != null) {
      yield r'qualityProfileId';
      yield serializers.serialize(
        object.qualityProfileId,
        specifiedType: const FullType(int),
      );
    }
    if (object.searchOnAdd != null) {
      yield r'searchOnAdd';
      yield serializers.serialize(
        object.searchOnAdd,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minimumAvailability != null) {
      yield r'minimumAvailability';
      yield serializers.serialize(
        object.minimumAvailability,
        specifiedType: const FullType(MovieStatusType),
      );
    }
    if (object.listType != null) {
      yield r'listType';
      yield serializers.serialize(
        object.listType,
        specifiedType: const FullType(ImportListType),
      );
    }
    if (object.listOrder != null) {
      yield r'listOrder';
      yield serializers.serialize(
        object.listOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.minRefreshInterval != null) {
      yield r'minRefreshInterval';
      yield serializers.serialize(
        object.minRefreshInterval,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportListResource object, {
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
    required ImportListResourceBuilder result,
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
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ImportListResource)]),
          ) as BuiltList<ImportListResource>?;
          if (valueDes == null) continue;
          result.presets.replace(valueDes);
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'enableAuto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableAuto = valueDes;
          break;
        case r'monitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MonitorTypes),
          ) as MonitorTypes;
          result.monitor = valueDes;
          break;
        case r'rootFolderPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootFolderPath = valueDes;
          break;
        case r'qualityProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.qualityProfileId = valueDes;
          break;
        case r'searchOnAdd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchOnAdd = valueDes;
          break;
        case r'minimumAvailability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatusType),
          ) as MovieStatusType;
          result.minimumAvailability = valueDes;
          break;
        case r'listType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImportListType),
          ) as ImportListType;
          result.listType = valueDes;
          break;
        case r'listOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.listOrder = valueDes;
          break;
        case r'minRefreshInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minRefreshInterval = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportListResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportListResourceBuilder();
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
