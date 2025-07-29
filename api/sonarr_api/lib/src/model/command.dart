//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/command_trigger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'command.g.dart';

/// Command
///
/// Properties:
/// * [sendUpdatesToClient]
/// * [updateScheduledTask]
/// * [completionMessage]
/// * [requiresDiskAccess]
/// * [isExclusive]
/// * [isLongRunning]
/// * [name]
/// * [lastExecutionTime]
/// * [lastStartTime]
/// * [trigger]
/// * [suppressMessages]
/// * [clientUserAgent]
@BuiltValue()
abstract class Command implements Built<Command, CommandBuilder> {
  @BuiltValueField(wireName: r'sendUpdatesToClient')
  bool? get sendUpdatesToClient;

  @BuiltValueField(wireName: r'updateScheduledTask')
  bool? get updateScheduledTask;

  @BuiltValueField(wireName: r'completionMessage')
  String? get completionMessage;

  @BuiltValueField(wireName: r'requiresDiskAccess')
  bool? get requiresDiskAccess;

  @BuiltValueField(wireName: r'isExclusive')
  bool? get isExclusive;

  @BuiltValueField(wireName: r'isLongRunning')
  bool? get isLongRunning;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'lastExecutionTime')
  DateTime? get lastExecutionTime;

  @BuiltValueField(wireName: r'lastStartTime')
  DateTime? get lastStartTime;

  @BuiltValueField(wireName: r'trigger')
  CommandTrigger? get trigger;
  // enum triggerEnum {  unspecified,  manual,  scheduled,  };

  @BuiltValueField(wireName: r'suppressMessages')
  bool? get suppressMessages;

  @BuiltValueField(wireName: r'clientUserAgent')
  String? get clientUserAgent;

  Command._();

  factory Command([void updates(CommandBuilder b)]) = _$Command;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Command> get serializer => _$CommandSerializer();
}

class _$CommandSerializer implements PrimitiveSerializer<Command> {
  @override
  final Iterable<Type> types = const [Command, _$Command];

  @override
  final String wireName = r'Command';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Command object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.completionMessage != null) {
      yield r'completionMessage';
      yield serializers.serialize(
        object.completionMessage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.requiresDiskAccess != null) {
      yield r'requiresDiskAccess';
      yield serializers.serialize(
        object.requiresDiskAccess,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isExclusive != null) {
      yield r'isExclusive';
      yield serializers.serialize(
        object.isExclusive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isLongRunning != null) {
      yield r'isLongRunning';
      yield serializers.serialize(
        object.isLongRunning,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastExecutionTime != null) {
      yield r'lastExecutionTime';
      yield serializers.serialize(
        object.lastExecutionTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastStartTime != null) {
      yield r'lastStartTime';
      yield serializers.serialize(
        object.lastStartTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.trigger != null) {
      yield r'trigger';
      yield serializers.serialize(
        object.trigger,
        specifiedType: const FullType(CommandTrigger),
      );
    }
    if (object.suppressMessages != null) {
      yield r'suppressMessages';
      yield serializers.serialize(
        object.suppressMessages,
        specifiedType: const FullType(bool),
      );
    }
    if (object.clientUserAgent != null) {
      yield r'clientUserAgent';
      yield serializers.serialize(
        object.clientUserAgent,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Command object, {
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
    required CommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'completionMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.completionMessage = valueDes;
          break;
        case r'requiresDiskAccess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requiresDiskAccess = valueDes;
          break;
        case r'isExclusive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExclusive = valueDes;
          break;
        case r'isLongRunning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isLongRunning = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'lastExecutionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastExecutionTime = valueDes;
          break;
        case r'lastStartTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastStartTime = valueDes;
          break;
        case r'trigger':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CommandTrigger),
          ) as CommandTrigger;
          result.trigger = valueDes;
          break;
        case r'suppressMessages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.suppressMessages = valueDes;
          break;
        case r'clientUserAgent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.clientUserAgent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Command deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommandBuilder();
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
