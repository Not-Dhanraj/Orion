//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/privacy_level.dart';
import 'package:radarr/src/model/select_option.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field.g.dart';

/// Field
///
/// Properties:
/// * [order]
/// * [name]
/// * [label]
/// * [unit]
/// * [helpText]
/// * [helpTextWarning]
/// * [helpLink]
/// * [value]
/// * [type]
/// * [advanced]
/// * [selectOptions]
/// * [selectOptionsProviderAction]
/// * [section]
/// * [hidden]
/// * [privacy]
/// * [placeholder]
/// * [isFloat]
@BuiltValue()
abstract class Field implements Built<Field, FieldBuilder> {
  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'helpText')
  String? get helpText;

  @BuiltValueField(wireName: r'helpTextWarning')
  String? get helpTextWarning;

  @BuiltValueField(wireName: r'helpLink')
  String? get helpLink;

  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'advanced')
  bool? get advanced;

  @BuiltValueField(wireName: r'selectOptions')
  BuiltList<SelectOption>? get selectOptions;

  @BuiltValueField(wireName: r'selectOptionsProviderAction')
  String? get selectOptionsProviderAction;

  @BuiltValueField(wireName: r'section')
  String? get section;

  @BuiltValueField(wireName: r'hidden')
  String? get hidden;

  @BuiltValueField(wireName: r'privacy')
  PrivacyLevel? get privacy;
  // enum privacyEnum {  normal,  password,  apiKey,  userName,  };

  @BuiltValueField(wireName: r'placeholder')
  String? get placeholder;

  @BuiltValueField(wireName: r'isFloat')
  bool? get isFloat;

  Field._();

  factory Field([void updates(FieldBuilder b)]) = _$Field;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Field> get serializer => _$FieldSerializer();
}

class _$FieldSerializer implements PrimitiveSerializer<Field> {
  @override
  final Iterable<Type> types = const [Field, _$Field];

  @override
  final String wireName = r'Field';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Field object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
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
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.helpText != null) {
      yield r'helpText';
      yield serializers.serialize(
        object.helpText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.helpTextWarning != null) {
      yield r'helpTextWarning';
      yield serializers.serialize(
        object.helpTextWarning,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.helpLink != null) {
      yield r'helpLink';
      yield serializers.serialize(
        object.helpLink,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.advanced != null) {
      yield r'advanced';
      yield serializers.serialize(
        object.advanced,
        specifiedType: const FullType(bool),
      );
    }
    if (object.selectOptions != null) {
      yield r'selectOptions';
      yield serializers.serialize(
        object.selectOptions,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(SelectOption)]),
      );
    }
    if (object.selectOptionsProviderAction != null) {
      yield r'selectOptionsProviderAction';
      yield serializers.serialize(
        object.selectOptionsProviderAction,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.section != null) {
      yield r'section';
      yield serializers.serialize(
        object.section,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hidden != null) {
      yield r'hidden';
      yield serializers.serialize(
        object.hidden,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.privacy != null) {
      yield r'privacy';
      yield serializers.serialize(
        object.privacy,
        specifiedType: const FullType(PrivacyLevel),
      );
    }
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isFloat != null) {
      yield r'isFloat';
      yield serializers.serialize(
        object.isFloat,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Field object, {
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
    required FieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.order = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'helpText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.helpText = valueDes;
          break;
        case r'helpTextWarning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.helpTextWarning = valueDes;
          break;
        case r'helpLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.helpLink = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'advanced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.advanced = valueDes;
          break;
        case r'selectOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(SelectOption)]),
          ) as BuiltList<SelectOption>?;
          if (valueDes == null) continue;
          result.selectOptions.replace(valueDes);
          break;
        case r'selectOptionsProviderAction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.selectOptionsProviderAction = valueDes;
          break;
        case r'section':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.section = valueDes;
          break;
        case r'hidden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hidden = valueDes;
          break;
        case r'privacy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrivacyLevel),
          ) as PrivacyLevel;
          result.privacy = valueDes;
          break;
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.placeholder = valueDes;
          break;
        case r'isFloat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFloat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Field deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldBuilder();
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
