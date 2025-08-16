//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/update_changes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_resource.g.dart';

/// UpdateResource
///
/// Properties:
/// * [id]
/// * [version]
/// * [branch]
/// * [releaseDate]
/// * [fileName]
/// * [url]
/// * [installed]
/// * [installedOn]
/// * [installable]
/// * [latest]
/// * [changes]
/// * [hash]
@BuiltValue()
abstract class UpdateResource
    implements Built<UpdateResource, UpdateResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'branch')
  String? get branch;

  @BuiltValueField(wireName: r'releaseDate')
  DateTime? get releaseDate;

  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'installed')
  bool? get installed;

  @BuiltValueField(wireName: r'installedOn')
  DateTime? get installedOn;

  @BuiltValueField(wireName: r'installable')
  bool? get installable;

  @BuiltValueField(wireName: r'latest')
  bool? get latest;

  @BuiltValueField(wireName: r'changes')
  UpdateChanges? get changes;

  @BuiltValueField(wireName: r'hash')
  String? get hash;

  UpdateResource._();

  factory UpdateResource([void updates(UpdateResourceBuilder b)]) =
      _$UpdateResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateResource> get serializer =>
      _$UpdateResourceSerializer();
}

class _$UpdateResourceSerializer
    implements PrimitiveSerializer<UpdateResource> {
  @override
  final Iterable<Type> types = const [UpdateResource, _$UpdateResource];

  @override
  final String wireName = r'UpdateResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.branch != null) {
      yield r'branch';
      yield serializers.serialize(
        object.branch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseDate != null) {
      yield r'releaseDate';
      yield serializers.serialize(
        object.releaseDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.fileName != null) {
      yield r'fileName';
      yield serializers.serialize(
        object.fileName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.installed != null) {
      yield r'installed';
      yield serializers.serialize(
        object.installed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.installedOn != null) {
      yield r'installedOn';
      yield serializers.serialize(
        object.installedOn,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.installable != null) {
      yield r'installable';
      yield serializers.serialize(
        object.installable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.latest != null) {
      yield r'latest';
      yield serializers.serialize(
        object.latest,
        specifiedType: const FullType(bool),
      );
    }
    if (object.changes != null) {
      yield r'changes';
      yield serializers.serialize(
        object.changes,
        specifiedType: const FullType(UpdateChanges),
      );
    }
    if (object.hash != null) {
      yield r'hash';
      yield serializers.serialize(
        object.hash,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateResource object, {
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
    required UpdateResourceBuilder result,
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branch = valueDes;
          break;
        case r'releaseDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.releaseDate = valueDes;
          break;
        case r'fileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileName = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'installed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.installed = valueDes;
          break;
        case r'installedOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.installedOn = valueDes;
          break;
        case r'installable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.installable = valueDes;
          break;
        case r'latest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.latest = valueDes;
          break;
        case r'changes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateChanges),
          ) as UpdateChanges;
          result.changes.replace(valueDes);
          break;
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateResourceBuilder();
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
