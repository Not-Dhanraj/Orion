//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/field.dart';
import 'package:sonarr/src/model/provider_message.dart';
import 'package:built_collection/built_collection.dart';
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
/// * [onImportComplete]
/// * [onRename]
/// * [onSeriesAdd]
/// * [onSeriesDelete]
/// * [onEpisodeFileDelete]
/// * [onEpisodeFileDeleteForUpgrade]
/// * [onHealthIssue]
/// * [includeHealthWarnings]
/// * [onHealthRestored]
/// * [onApplicationUpdate]
/// * [onManualInteractionRequired]
/// * [supportsOnGrab]
/// * [supportsOnDownload]
/// * [supportsOnUpgrade]
/// * [supportsOnImportComplete]
/// * [supportsOnRename]
/// * [supportsOnSeriesAdd]
/// * [supportsOnSeriesDelete]
/// * [supportsOnEpisodeFileDelete]
/// * [supportsOnEpisodeFileDeleteForUpgrade]
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

  @BuiltValueField(wireName: r'onImportComplete')
  bool? get onImportComplete;

  @BuiltValueField(wireName: r'onRename')
  bool? get onRename;

  @BuiltValueField(wireName: r'onSeriesAdd')
  bool? get onSeriesAdd;

  @BuiltValueField(wireName: r'onSeriesDelete')
  bool? get onSeriesDelete;

  @BuiltValueField(wireName: r'onEpisodeFileDelete')
  bool? get onEpisodeFileDelete;

  @BuiltValueField(wireName: r'onEpisodeFileDeleteForUpgrade')
  bool? get onEpisodeFileDeleteForUpgrade;

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

  @BuiltValueField(wireName: r'supportsOnImportComplete')
  bool? get supportsOnImportComplete;

  @BuiltValueField(wireName: r'supportsOnRename')
  bool? get supportsOnRename;

  @BuiltValueField(wireName: r'supportsOnSeriesAdd')
  bool? get supportsOnSeriesAdd;

  @BuiltValueField(wireName: r'supportsOnSeriesDelete')
  bool? get supportsOnSeriesDelete;

  @BuiltValueField(wireName: r'supportsOnEpisodeFileDelete')
  bool? get supportsOnEpisodeFileDelete;

  @BuiltValueField(wireName: r'supportsOnEpisodeFileDeleteForUpgrade')
  bool? get supportsOnEpisodeFileDeleteForUpgrade;

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
    if (object.onImportComplete != null) {
      yield r'onImportComplete';
      yield serializers.serialize(
        object.onImportComplete,
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
    if (object.onSeriesAdd != null) {
      yield r'onSeriesAdd';
      yield serializers.serialize(
        object.onSeriesAdd,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onSeriesDelete != null) {
      yield r'onSeriesDelete';
      yield serializers.serialize(
        object.onSeriesDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onEpisodeFileDelete != null) {
      yield r'onEpisodeFileDelete';
      yield serializers.serialize(
        object.onEpisodeFileDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onEpisodeFileDeleteForUpgrade != null) {
      yield r'onEpisodeFileDeleteForUpgrade';
      yield serializers.serialize(
        object.onEpisodeFileDeleteForUpgrade,
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
    if (object.supportsOnImportComplete != null) {
      yield r'supportsOnImportComplete';
      yield serializers.serialize(
        object.supportsOnImportComplete,
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
    if (object.supportsOnSeriesAdd != null) {
      yield r'supportsOnSeriesAdd';
      yield serializers.serialize(
        object.supportsOnSeriesAdd,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnSeriesDelete != null) {
      yield r'supportsOnSeriesDelete';
      yield serializers.serialize(
        object.supportsOnSeriesDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnEpisodeFileDelete != null) {
      yield r'supportsOnEpisodeFileDelete';
      yield serializers.serialize(
        object.supportsOnEpisodeFileDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportsOnEpisodeFileDeleteForUpgrade != null) {
      yield r'supportsOnEpisodeFileDeleteForUpgrade';
      yield serializers.serialize(
        object.supportsOnEpisodeFileDeleteForUpgrade,
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
        case r'onImportComplete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onImportComplete = valueDes;
          break;
        case r'onRename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onRename = valueDes;
          break;
        case r'onSeriesAdd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onSeriesAdd = valueDes;
          break;
        case r'onSeriesDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onSeriesDelete = valueDes;
          break;
        case r'onEpisodeFileDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onEpisodeFileDelete = valueDes;
          break;
        case r'onEpisodeFileDeleteForUpgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onEpisodeFileDeleteForUpgrade = valueDes;
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
        case r'supportsOnImportComplete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnImportComplete = valueDes;
          break;
        case r'supportsOnRename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnRename = valueDes;
          break;
        case r'supportsOnSeriesAdd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnSeriesAdd = valueDes;
          break;
        case r'supportsOnSeriesDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnSeriesDelete = valueDes;
          break;
        case r'supportsOnEpisodeFileDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnEpisodeFileDelete = valueDes;
          break;
        case r'supportsOnEpisodeFileDeleteForUpgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsOnEpisodeFileDeleteForUpgrade = valueDes;
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
