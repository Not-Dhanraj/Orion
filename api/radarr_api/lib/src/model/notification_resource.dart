//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/field.dart';
import 'package:radarr/src/model/provider_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_resource.g.dart';

/// NotificationResource
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
/// * [link]
/// * [onGrab]
/// * [onDownload]
/// * [onUpgrade]
/// * [onRename]
/// * [onMovieAdded]
/// * [onMovieDelete]
/// * [onMovieFileDelete]
/// * [onMovieFileDeleteForUpgrade]
/// * [onHealthIssue]
/// * [includeHealthWarnings]
/// * [onHealthRestored]
/// * [onApplicationUpdate]
/// * [onManualInteractionRequired]
/// * [supportsOnGrab]
/// * [supportsOnDownload]
/// * [supportsOnUpgrade]
/// * [supportsOnRename]
/// * [supportsOnMovieAdded]
/// * [supportsOnMovieDelete]
/// * [supportsOnMovieFileDelete]
/// * [supportsOnMovieFileDeleteForUpgrade]
/// * [supportsOnHealthIssue]
/// * [supportsOnHealthRestored]
/// * [supportsOnApplicationUpdate]
/// * [supportsOnManualInteractionRequired]
/// * [testCommand]
@BuiltValue()
abstract class NotificationResource
    implements Built<NotificationResource, NotificationResourceBuilder> {
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
  BuiltList<NotificationResource>? get presets;

  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'onGrab')
  bool? get onGrab;

  @BuiltValueField(wireName: r'onDownload')
  bool? get onDownload;

  @BuiltValueField(wireName: r'onUpgrade')
  bool? get onUpgrade;

  @BuiltValueField(wireName: r'onRename')
  bool? get onRename;

  @BuiltValueField(wireName: r'onMovieAdded')
  bool? get onMovieAdded;

  @BuiltValueField(wireName: r'onMovieDelete')
  bool? get onMovieDelete;

  @BuiltValueField(wireName: r'onMovieFileDelete')
  bool? get onMovieFileDelete;

  @BuiltValueField(wireName: r'onMovieFileDeleteForUpgrade')
  bool? get onMovieFileDeleteForUpgrade;

  @BuiltValueField(wireName: r'onHealthIssue')
  bool? get onHealthIssue;

  @BuiltValueField(wireName: r'includeHealthWarnings')
  bool? get includeHealthWarnings;

  @BuiltValueField(wireName: r'onHealthRestored')
  bool? get onHealthRestored;

  @BuiltValueField(wireName: r'onApplicationUpdate')
  bool? get onApplicationUpdate;

  @BuiltValueField(wireName: r'onManualInteractionRequired')
  bool? get onManualInteractionRequired;

  @BuiltValueField(wireName: r'supportsOnGrab')
  bool? get supportsOnGrab;

  @BuiltValueField(wireName: r'supportsOnDownload')
  bool? get supportsOnDownload;

  @BuiltValueField(wireName: r'supportsOnUpgrade')
  bool? get supportsOnUpgrade;

  @BuiltValueField(wireName: r'supportsOnRename')
  bool? get supportsOnRename;

  @BuiltValueField(wireName: r'supportsOnMovieAdded')
  bool? get supportsOnMovieAdded;

  @BuiltValueField(wireName: r'supportsOnMovieDelete')
  bool? get supportsOnMovieDelete;

  @BuiltValueField(wireName: r'supportsOnMovieFileDelete')
  bool? get supportsOnMovieFileDelete;

  @BuiltValueField(wireName: r'supportsOnMovieFileDeleteForUpgrade')
  bool? get supportsOnMovieFileDeleteForUpgrade;

  @BuiltValueField(wireName: r'supportsOnHealthIssue')
  bool? get supportsOnHealthIssue;

  @BuiltValueField(wireName: r'supportsOnHealthRestored')
  bool? get supportsOnHealthRestored;

  @BuiltValueField(wireName: r'supportsOnApplicationUpdate')
  bool? get supportsOnApplicationUpdate;

  @BuiltValueField(wireName: r'supportsOnManualInteractionRequired')
  bool? get supportsOnManualInteractionRequired;

  @BuiltValueField(wireName: r'testCommand')
  String? get testCommand;

  NotificationResource._();

  factory NotificationResource([void updates(NotificationResourceBuilder b)]) =
      _$NotificationResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationResource> get serializer =>
      _$NotificationResourceSerializer();
}

class _$NotificationResourceSerializer
    implements PrimitiveSerializer<NotificationResource> {
  @override
  final Iterable<Type> types = const [
    NotificationResource,
    _$NotificationResource
  ];

  @override
  final String wireName = r'NotificationResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationResource object, {
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
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(NotificationResource)]),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.onGrab != null) {
      yield r'onGrab';
      yield serializers.serialize(
        object.onGrab,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onDownload != null) {
      yield r'onDownload';
      yield serializers.serialize(
        object.onDownload,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onUpgrade != null) {
      yield r'onUpgrade';
      yield serializers.serialize(
        object.onUpgrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onRename != null) {
      yield r'onRename';
      yield serializers.serialize(
        object.onRename,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onMovieAdded != null) {
      yield r'onMovieAdded';
      yield serializers.serialize(
        object.onMovieAdded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onMovieDelete != null) {
      yield r'onMovieDelete';
      yield serializers.serialize(
        object.onMovieDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onMovieFileDelete != null) {
      yield r'onMovieFileDelete';
      yield serializers.serialize(
        object.onMovieFileDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onMovieFileDeleteForUpgrade != null) {
      yield r'onMovieFileDeleteForUpgrade';
      yield serializers.serialize(
        object.onMovieFileDeleteForUpgrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onHealthIssue != null) {
      yield r'onHealthIssue';
      yield serializers.serialize(
        object.onHealthIssue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.includeHealthWarnings != null) {
      yield r'includeHealthWarnings';
      yield serializers.serialize(
        object.includeHealthWarnings,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onHealthRestored != null) {
      yield r'onHealthRestored';
      yield serializers.serialize(
        object.onHealthRestored,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onApplicationUpdate != null) {
      yield r'onApplicationUpdate';
      yield serializers.serialize(
        object.onApplicationUpdate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onManualInteractionRequired != null) {
      yield r'onManualInteractionRequired';
      yield serializers.serialize(
        object.onManualInteractionRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnGrab != null) {
      yield r'supportsOnGrab';
      yield serializers.serialize(
        object.supportsOnGrab,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnDownload != null) {
      yield r'supportsOnDownload';
      yield serializers.serialize(
        object.supportsOnDownload,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnUpgrade != null) {
      yield r'supportsOnUpgrade';
      yield serializers.serialize(
        object.supportsOnUpgrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnRename != null) {
      yield r'supportsOnRename';
      yield serializers.serialize(
        object.supportsOnRename,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnMovieAdded != null) {
      yield r'supportsOnMovieAdded';
      yield serializers.serialize(
        object.supportsOnMovieAdded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnMovieDelete != null) {
      yield r'supportsOnMovieDelete';
      yield serializers.serialize(
        object.supportsOnMovieDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnMovieFileDelete != null) {
      yield r'supportsOnMovieFileDelete';
      yield serializers.serialize(
        object.supportsOnMovieFileDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnMovieFileDeleteForUpgrade != null) {
      yield r'supportsOnMovieFileDeleteForUpgrade';
      yield serializers.serialize(
        object.supportsOnMovieFileDeleteForUpgrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnHealthIssue != null) {
      yield r'supportsOnHealthIssue';
      yield serializers.serialize(
        object.supportsOnHealthIssue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnHealthRestored != null) {
      yield r'supportsOnHealthRestored';
      yield serializers.serialize(
        object.supportsOnHealthRestored,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnApplicationUpdate != null) {
      yield r'supportsOnApplicationUpdate';
      yield serializers.serialize(
        object.supportsOnApplicationUpdate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnManualInteractionRequired != null) {
      yield r'supportsOnManualInteractionRequired';
      yield serializers.serialize(
        object.supportsOnManualInteractionRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.testCommand != null) {
      yield r'testCommand';
      yield serializers.serialize(
        object.testCommand,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationResource object, {
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
    required NotificationResourceBuilder result,
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
                BuiltList, [FullType(NotificationResource)]),
          ) as BuiltList<NotificationResource>?;
          if (valueDes == null) continue;
          result.presets.replace(valueDes);
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.link = valueDes;
          break;
        case r'onGrab':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onGrab = valueDes;
          break;
        case r'onDownload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onDownload = valueDes;
          break;
        case r'onUpgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onUpgrade = valueDes;
          break;
        case r'onRename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onRename = valueDes;
          break;
        case r'onMovieAdded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onMovieAdded = valueDes;
          break;
        case r'onMovieDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onMovieDelete = valueDes;
          break;
        case r'onMovieFileDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onMovieFileDelete = valueDes;
          break;
        case r'onMovieFileDeleteForUpgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onMovieFileDeleteForUpgrade = valueDes;
          break;
        case r'onHealthIssue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onHealthIssue = valueDes;
          break;
        case r'includeHealthWarnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeHealthWarnings = valueDes;
          break;
        case r'onHealthRestored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onHealthRestored = valueDes;
          break;
        case r'onApplicationUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onApplicationUpdate = valueDes;
          break;
        case r'onManualInteractionRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onManualInteractionRequired = valueDes;
          break;
        case r'supportsOnGrab':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnGrab = valueDes;
          break;
        case r'supportsOnDownload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnDownload = valueDes;
          break;
        case r'supportsOnUpgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnUpgrade = valueDes;
          break;
        case r'supportsOnRename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnRename = valueDes;
          break;
        case r'supportsOnMovieAdded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnMovieAdded = valueDes;
          break;
        case r'supportsOnMovieDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnMovieDelete = valueDes;
          break;
        case r'supportsOnMovieFileDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnMovieFileDelete = valueDes;
          break;
        case r'supportsOnMovieFileDeleteForUpgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnMovieFileDeleteForUpgrade = valueDes;
          break;
        case r'supportsOnHealthIssue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnHealthIssue = valueDes;
          break;
        case r'supportsOnHealthRestored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnHealthRestored = valueDes;
          break;
        case r'supportsOnApplicationUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnApplicationUpdate = valueDes;
          break;
        case r'supportsOnManualInteractionRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnManualInteractionRequired = valueDes;
          break;
        case r'testCommand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testCommand = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationResourceBuilder();
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
