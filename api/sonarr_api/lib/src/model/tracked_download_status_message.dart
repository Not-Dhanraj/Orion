//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tracked_download_status_message.g.dart';

/// TrackedDownloadStatusMessage
///
/// Properties:
/// * [title]
/// * [messages]
@BuiltValue()
abstract class TrackedDownloadStatusMessage
    implements
        Built<TrackedDownloadStatusMessage,
            TrackedDownloadStatusMessageBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'messages')
  BuiltList<String>? get messages;

  TrackedDownloadStatusMessage._();

  factory TrackedDownloadStatusMessage(
          [void updates(TrackedDownloadStatusMessageBuilder b)]) =
      _$TrackedDownloadStatusMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackedDownloadStatusMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackedDownloadStatusMessage> get serializer =>
      _$TrackedDownloadStatusMessageSerializer();
}

class _$TrackedDownloadStatusMessageSerializer
    implements PrimitiveSerializer<TrackedDownloadStatusMessage> {
  @override
  final Iterable<Type> types = const [
    TrackedDownloadStatusMessage,
    _$TrackedDownloadStatusMessage
  ];

  @override
  final String wireName = r'TrackedDownloadStatusMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackedDownloadStatusMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.messages != null) {
      yield r'messages';
      yield serializers.serialize(
        object.messages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackedDownloadStatusMessage object, {
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
    required TrackedDownloadStatusMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.messages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackedDownloadStatusMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackedDownloadStatusMessageBuilder();
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
