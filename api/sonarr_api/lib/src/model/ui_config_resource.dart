//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ui_config_resource.g.dart';

/// UiConfigResource
///
/// Properties:
/// * [id]
/// * [firstDayOfWeek]
/// * [calendarWeekColumnHeader]
/// * [shortDateFormat]
/// * [longDateFormat]
/// * [timeFormat]
/// * [showRelativeDates]
/// * [enableColorImpairedMode]
/// * [theme]
/// * [uiLanguage]
@BuiltValue()
abstract class UiConfigResource
    implements Built<UiConfigResource, UiConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'firstDayOfWeek')
  int? get firstDayOfWeek;

  @BuiltValueField(wireName: r'calendarWeekColumnHeader')
  String? get calendarWeekColumnHeader;

  @BuiltValueField(wireName: r'shortDateFormat')
  String? get shortDateFormat;

  @BuiltValueField(wireName: r'longDateFormat')
  String? get longDateFormat;

  @BuiltValueField(wireName: r'timeFormat')
  String? get timeFormat;

  @BuiltValueField(wireName: r'showRelativeDates')
  bool? get showRelativeDates;

  @BuiltValueField(wireName: r'enableColorImpairedMode')
  bool? get enableColorImpairedMode;

  @BuiltValueField(wireName: r'theme')
  String? get theme;

  @BuiltValueField(wireName: r'uiLanguage')
  int? get uiLanguage;

  UiConfigResource._();

  factory UiConfigResource([void updates(UiConfigResourceBuilder b)]) =
      _$UiConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UiConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UiConfigResource> get serializer =>
      _$UiConfigResourceSerializer();
}

class _$UiConfigResourceSerializer
    implements PrimitiveSerializer<UiConfigResource> {
  @override
  final Iterable<Type> types = const [UiConfigResource, _$UiConfigResource];

  @override
  final String wireName = r'UiConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UiConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstDayOfWeek != null) {
      yield r'firstDayOfWeek';
      yield serializers.serialize(
        object.firstDayOfWeek,
        specifiedType: const FullType(int),
      );
    }
    if (object.calendarWeekColumnHeader != null) {
      yield r'calendarWeekColumnHeader';
      yield serializers.serialize(
        object.calendarWeekColumnHeader,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shortDateFormat != null) {
      yield r'shortDateFormat';
      yield serializers.serialize(
        object.shortDateFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.longDateFormat != null) {
      yield r'longDateFormat';
      yield serializers.serialize(
        object.longDateFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timeFormat != null) {
      yield r'timeFormat';
      yield serializers.serialize(
        object.timeFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.showRelativeDates != null) {
      yield r'showRelativeDates';
      yield serializers.serialize(
        object.showRelativeDates,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enableColorImpairedMode != null) {
      yield r'enableColorImpairedMode';
      yield serializers.serialize(
        object.enableColorImpairedMode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.uiLanguage != null) {
      yield r'uiLanguage';
      yield serializers.serialize(
        object.uiLanguage,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UiConfigResource object, {
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
    required UiConfigResourceBuilder result,
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
        case r'firstDayOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.firstDayOfWeek = valueDes;
          break;
        case r'calendarWeekColumnHeader':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.calendarWeekColumnHeader = valueDes;
          break;
        case r'shortDateFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortDateFormat = valueDes;
          break;
        case r'longDateFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.longDateFormat = valueDes;
          break;
        case r'timeFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timeFormat = valueDes;
          break;
        case r'showRelativeDates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showRelativeDates = valueDes;
          break;
        case r'enableColorImpairedMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableColorImpairedMode = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'uiLanguage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.uiLanguage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UiConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UiConfigResourceBuilder();
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
