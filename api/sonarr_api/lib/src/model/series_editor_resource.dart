//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/apply_tags.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/new_item_monitor_types.dart';
import 'package:sonarr/src/model/series_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_editor_resource.g.dart';

/// SeriesEditorResource
///
/// Properties:
/// * [seriesIds]
/// * [monitored]
/// * [monitorNewItems]
/// * [qualityProfileId]
/// * [seriesType]
/// * [seasonFolder]
/// * [rootFolderPath]
/// * [tags]
/// * [applyTags]
/// * [moveFiles]
/// * [deleteFiles]
/// * [addImportListExclusion]
@BuiltValue()
abstract class SeriesEditorResource
    implements Built<SeriesEditorResource, SeriesEditorResourceBuilder> {
  @BuiltValueField(wireName: r'seriesIds')
  BuiltList<int>? get seriesIds;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'monitorNewItems')
  NewItemMonitorTypes? get monitorNewItems;
  // enum monitorNewItemsEnum {  all,  none,  };

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  @BuiltValueField(wireName: r'seriesType')
  SeriesTypes? get seriesType;
  // enum seriesTypeEnum {  standard,  daily,  anime,  };

  @BuiltValueField(wireName: r'seasonFolder')
  bool? get seasonFolder;

  @BuiltValueField(wireName: r'rootFolderPath')
  String? get rootFolderPath;

  @BuiltValueField(wireName: r'tags')
  BuiltList<int>? get tags;

  @BuiltValueField(wireName: r'applyTags')
  ApplyTags? get applyTags;
  // enum applyTagsEnum {  add,  remove,  replace,  };

  @BuiltValueField(wireName: r'moveFiles')
  bool? get moveFiles;

  @BuiltValueField(wireName: r'deleteFiles')
  bool? get deleteFiles;

  @BuiltValueField(wireName: r'addImportListExclusion')
  bool? get addImportListExclusion;

  SeriesEditorResource._();

  factory SeriesEditorResource([void updates(SeriesEditorResourceBuilder b)]) =
      _$SeriesEditorResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesEditorResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesEditorResource> get serializer =>
      _$SeriesEditorResourceSerializer();
}

class _$SeriesEditorResourceSerializer
    implements PrimitiveSerializer<SeriesEditorResource> {
  @override
  final Iterable<Type> types = const [
    SeriesEditorResource,
    _$SeriesEditorResource
  ];

  @override
  final String wireName = r'SeriesEditorResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesEditorResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seriesIds != null) {
      yield r'seriesIds';
      yield serializers.serialize(
        object.seriesIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.monitorNewItems != null) {
      yield r'monitorNewItems';
      yield serializers.serialize(
        object.monitorNewItems,
        specifiedType: const FullType(NewItemMonitorTypes),
      );
    }
    if (object.qualityProfileId != null) {
      yield r'qualityProfileId';
      yield serializers.serialize(
        object.qualityProfileId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.seriesType != null) {
      yield r'seriesType';
      yield serializers.serialize(
        object.seriesType,
        specifiedType: const FullType(SeriesTypes),
      );
    }
    if (object.seasonFolder != null) {
      yield r'seasonFolder';
      yield serializers.serialize(
        object.seasonFolder,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.rootFolderPath != null) {
      yield r'rootFolderPath';
      yield serializers.serialize(
        object.rootFolderPath,
        specifiedType: const FullType.nullable(String),
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
    if (object.moveFiles != null) {
      yield r'moveFiles';
      yield serializers.serialize(
        object.moveFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deleteFiles != null) {
      yield r'deleteFiles';
      yield serializers.serialize(
        object.deleteFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.addImportListExclusion != null) {
      yield r'addImportListExclusion';
      yield serializers.serialize(
        object.addImportListExclusion,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesEditorResource object, {
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
    required SeriesEditorResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seriesIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.seriesIds.replace(valueDes);
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.monitored = valueDes;
          break;
        case r'monitorNewItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NewItemMonitorTypes),
          ) as NewItemMonitorTypes;
          result.monitorNewItems = valueDes;
          break;
        case r'qualityProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.qualityProfileId = valueDes;
          break;
        case r'seriesType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesTypes),
          ) as SeriesTypes;
          result.seriesType = valueDes;
          break;
        case r'seasonFolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.seasonFolder = valueDes;
          break;
        case r'rootFolderPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootFolderPath = valueDes;
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
        case r'moveFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.moveFiles = valueDes;
          break;
        case r'deleteFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleteFiles = valueDes;
          break;
        case r'addImportListExclusion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.addImportListExclusion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesEditorResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesEditorResourceBuilder();
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
