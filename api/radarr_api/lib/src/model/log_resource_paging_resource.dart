//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/sort_direction.dart';
import 'package:radarr/src/model/log_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'log_resource_paging_resource.g.dart';

/// LogResourcePagingResource
///
/// Properties:
/// * [page]
/// * [pageSize]
/// * [sortKey]
/// * [sortDirection]
/// * [totalRecords]
/// * [records]
@BuiltValue()
abstract class LogResourcePagingResource
    implements
        Built<LogResourcePagingResource, LogResourcePagingResourceBuilder> {
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
  BuiltList<LogResource>? get records;

  LogResourcePagingResource._();

  factory LogResourcePagingResource(
          [void updates(LogResourcePagingResourceBuilder b)]) =
      _$LogResourcePagingResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogResourcePagingResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogResourcePagingResource> get serializer =>
      _$LogResourcePagingResourceSerializer();
}

class _$LogResourcePagingResourceSerializer
    implements PrimitiveSerializer<LogResourcePagingResource> {
  @override
  final Iterable<Type> types = const [
    LogResourcePagingResource,
    _$LogResourcePagingResource
  ];

  @override
  final String wireName = r'LogResourcePagingResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogResourcePagingResource object, {
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
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(LogResource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogResourcePagingResource object, {
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
    required LogResourcePagingResourceBuilder result,
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
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(LogResource)]),
          ) as BuiltList<LogResource>?;
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
  LogResourcePagingResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogResourcePagingResourceBuilder();
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
