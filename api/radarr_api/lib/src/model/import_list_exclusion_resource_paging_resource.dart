//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/sort_direction.dart';
import 'package:radarr/src/model/import_list_exclusion_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_list_exclusion_resource_paging_resource.g.dart';

/// ImportListExclusionResourcePagingResource
///
/// Properties:
/// * [page]
/// * [pageSize]
/// * [sortKey]
/// * [sortDirection]
/// * [totalRecords]
/// * [records]
@BuiltValue()
abstract class ImportListExclusionResourcePagingResource
    implements
        Built<ImportListExclusionResourcePagingResource,
            ImportListExclusionResourcePagingResourceBuilder> {
  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'pageSize')
  int? get pageSize;

  @BuiltValueField(wireName: r'sortKey')
  String? get sortKey;

  @BuiltValueField(wireName: r'sortDirection')
  SortDirection? get sortDirection;
  // enum sortDirectionEnum {  default,  ascending,  descending,  };

  @BuiltValueField(wireName: r'totalRecords')
  int? get totalRecords;

  @BuiltValueField(wireName: r'records')
  BuiltList<ImportListExclusionResource>? get records;

  ImportListExclusionResourcePagingResource._();

  factory ImportListExclusionResourcePagingResource(
          [void updates(ImportListExclusionResourcePagingResourceBuilder b)]) =
      _$ImportListExclusionResourcePagingResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportListExclusionResourcePagingResourceBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportListExclusionResourcePagingResource> get serializer =>
      _$ImportListExclusionResourcePagingResourceSerializer();
}

class _$ImportListExclusionResourcePagingResourceSerializer
    implements PrimitiveSerializer<ImportListExclusionResourcePagingResource> {
  @override
  final Iterable<Type> types = const [
    ImportListExclusionResourcePagingResource,
    _$ImportListExclusionResourcePagingResource
  ];

  @override
  final String wireName = r'ImportListExclusionResourcePagingResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportListExclusionResourcePagingResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.pageSize != null) {
      yield r'pageSize';
      yield serializers.serialize(
        object.pageSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.sortKey != null) {
      yield r'sortKey';
      yield serializers.serialize(
        object.sortKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sortDirection != null) {
      yield r'sortDirection';
      yield serializers.serialize(
        object.sortDirection,
        specifiedType: const FullType(SortDirection),
      );
    }
    if (object.totalRecords != null) {
      yield r'totalRecords';
      yield serializers.serialize(
        object.totalRecords,
        specifiedType: const FullType(int),
      );
    }
    if (object.records != null) {
      yield r'records';
      yield serializers.serialize(
        object.records,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(ImportListExclusionResource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportListExclusionResourcePagingResource object, {
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
    required ImportListExclusionResourcePagingResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'sortKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortKey = valueDes;
          break;
        case r'sortDirection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SortDirection),
          ) as SortDirection;
          result.sortDirection = valueDes;
          break;
        case r'totalRecords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalRecords = valueDes;
          break;
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ImportListExclusionResource)]),
          ) as BuiltList<ImportListExclusionResource>?;
          if (valueDes == null) continue;
          result.records.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportListExclusionResourcePagingResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportListExclusionResourcePagingResourceBuilder();
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
