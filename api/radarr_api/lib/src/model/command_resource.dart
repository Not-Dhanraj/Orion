//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/command_result.dart';
import 'package:radarr/src/model/command_trigger.dart';
import 'package:radarr/src/model/command_priority.dart';
import 'package:radarr/src/model/command_status.dart';
import 'package:radarr/src/model/command.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'command_resource.g.dart';

/// CommandResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [commandName]
/// * [message]
/// * [body]
/// * [priority]
/// * [status]
/// * [result]
/// * [queued]
/// * [started]
/// * [ended]
/// * [duration]
/// * [exception]
/// * [trigger]
/// * [clientUserAgent]
/// * [stateChangeTime]
/// * [sendUpdatesToClient]
/// * [updateScheduledTask]
/// * [lastExecutionTime]
@BuiltValue()
abstract class CommandResource
    implements Built<CommandResource, CommandResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'commandName')
  String? get commandName;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'body')
  Command? get body;

  @BuiltValueField(wireName: r'priority')
  CommandPriority? get priority;
  // enum priorityEnum {  normal,  high,  low,  };

  @BuiltValueField(wireName: r'status')
  CommandStatus? get status;
  // enum statusEnum {  queued,  started,  completed,  failed,  aborted,  cancelled,  orphaned,  };

  @BuiltValueField(wireName: r'result')
  CommandResult? get result;
  // enum resultEnum {  unknown,  successful,  unsuccessful,  };

  @BuiltValueField(wireName: r'queued')
  DateTime? get queued;

  @BuiltValueField(wireName: r'started')
  DateTime? get started;

  @BuiltValueField(wireName: r'ended')
  DateTime? get ended;

  @BuiltValueField(wireName: r'duration')
  String? get duration;

  @BuiltValueField(wireName: r'exception')
  String? get exception;

  @BuiltValueField(wireName: r'trigger')
  CommandTrigger? get trigger;
  // enum triggerEnum {  unspecified,  manual,  scheduled,  };

  @BuiltValueField(wireName: r'clientUserAgent')
  String? get clientUserAgent;

  @BuiltValueField(wireName: r'stateChangeTime')
  DateTime? get stateChangeTime;

  @BuiltValueField(wireName: r'sendUpdatesToClient')
  bool? get sendUpdatesToClient;

  @BuiltValueField(wireName: r'updateScheduledTask')
  bool? get updateScheduledTask;

  @BuiltValueField(wireName: r'lastExecutionTime')
  DateTime? get lastExecutionTime;

  CommandResource._();

  factory CommandResource([void updates(CommandResourceBuilder b)]) =
      _$CommandResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommandResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommandResource> get serializer =>
      _$CommandResourceSerializer();
}

class _$CommandResourceSerializer
    implements PrimitiveSerializer<CommandResource> {
  @override
  final Iterable<Type> types = const [CommandResource, _$CommandResource];

  @override
  final String wireName = r'CommandResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommandResource object, {
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
    if (object.commandName != null) {
      yield r'commandName';
      yield serializers.serialize(
        object.commandName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(Command),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(CommandPriority),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CommandStatus),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(CommandResult),
      );
    }
    if (object.queued != null) {
      yield r'queued';
      yield serializers.serialize(
        object.queued,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.started != null) {
      yield r'started';
      yield serializers.serialize(
        object.started,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.ended != null) {
      yield r'ended';
      yield serializers.serialize(
        object.ended,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exception != null) {
      yield r'exception';
      yield serializers.serialize(
        object.exception,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.trigger != null) {
      yield r'trigger';
      yield serializers.serialize(
        object.trigger,
        specifiedType: const FullType(CommandTrigger),
      );
    }
    if (object.clientUserAgent != null) {
      yield r'clientUserAgent';
      yield serializers.serialize(
        object.clientUserAgent,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.stateChangeTime != null) {
      yield r'stateChangeTime';
      yield serializers.serialize(
        object.stateChangeTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.sendUpdatesToClient != null) {
      yield r'sendUpdatesToClient';
      yield serializers.serialize(
        object.sendUpdatesToClient,
        specifiedType: const FullType(bool),
      );
    }
    if (object.updateScheduledTask != null) {
      yield r'updateScheduledTask';
      yield serializers.serialize(
        object.updateScheduledTask,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lastExecutionTime != null) {
      yield r'lastExecutionTime';
      yield serializers.serialize(
        object.lastExecutionTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommandResource object, {
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
    required CommandResourceBuilder result,
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
        case r'commandName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commandName = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Command),
          ) as Command;
          result.body.replace(valueDes);
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CommandPriority),
          ) as CommandPriority;
          result.priority = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CommandStatus),
          ) as CommandStatus;
          result.status = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CommandResult),
          ) as CommandResult;
          result.result = valueDes;
          break;
        case r'queued':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.queued = valueDes;
          break;
        case r'started':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.started = valueDes;
          break;
        case r'ended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.ended = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'exception':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exception = valueDes;
          break;
        case r'trigger':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CommandTrigger),
          ) as CommandTrigger;
          result.trigger = valueDes;
          break;
        case r'clientUserAgent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.clientUserAgent = valueDes;
          break;
        case r'stateChangeTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.stateChangeTime = valueDes;
          break;
        case r'sendUpdatesToClient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sendUpdatesToClient = valueDes;
          break;
        case r'updateScheduledTask':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.updateScheduledTask = valueDes;
          break;
        case r'lastExecutionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastExecutionTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommandResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommandResourceBuilder();
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
