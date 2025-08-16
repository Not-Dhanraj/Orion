//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_resource.g.dart';

/// TaskResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [taskName]
/// * [interval]
/// * [lastExecution]
/// * [lastStartTime]
/// * [nextExecution]
/// * [lastDuration]
@BuiltValue()
abstract class TaskResource
    implements Built<TaskResource, TaskResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'taskName')
  String? get taskName;

  @BuiltValueField(wireName: r'interval')
  int? get interval;

  @BuiltValueField(wireName: r'lastExecution')
  DateTime? get lastExecution;

  @BuiltValueField(wireName: r'lastStartTime')
  DateTime? get lastStartTime;

  @BuiltValueField(wireName: r'nextExecution')
  DateTime? get nextExecution;

  @BuiltValueField(wireName: r'lastDuration')
  String? get lastDuration;

  TaskResource._();

  factory TaskResource([void updates(TaskResourceBuilder b)]) = _$TaskResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskResource> get serializer => _$TaskResourceSerializer();
}

class _$TaskResourceSerializer implements PrimitiveSerializer<TaskResource> {
  @override
  final Iterable<Type> types = const [TaskResource, _$TaskResource];

  @override
  final String wireName = r'TaskResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskResource object, {
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
    if (object.taskName != null) {
      yield r'taskName';
      yield serializers.serialize(
        object.taskName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastExecution != null) {
      yield r'lastExecution';
      yield serializers.serialize(
        object.lastExecution,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastStartTime != null) {
      yield r'lastStartTime';
      yield serializers.serialize(
        object.lastStartTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.nextExecution != null) {
      yield r'nextExecution';
      yield serializers.serialize(
        object.nextExecution,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastDuration != null) {
      yield r'lastDuration';
      yield serializers.serialize(
        object.lastDuration,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskResource object, {
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
    required TaskResourceBuilder result,
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
        case r'taskName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.taskName = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.interval = valueDes;
          break;
        case r'lastExecution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastExecution = valueDes;
          break;
        case r'lastStartTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastStartTime = valueDes;
          break;
        case r'nextExecution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.nextExecution = valueDes;
          break;
        case r'lastDuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastDuration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskResourceBuilder();
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
