//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_title_info.g.dart';

/// SeriesTitleInfo
///
/// Properties:
/// * [title]
/// * [titleWithoutYear]
/// * [year]
/// * [allTitles]
@BuiltValue()
abstract class SeriesTitleInfo
    implements Built<SeriesTitleInfo, SeriesTitleInfoBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'titleWithoutYear')
  String? get titleWithoutYear;

  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'allTitles')
  BuiltList<String>? get allTitles;

  SeriesTitleInfo._();

  factory SeriesTitleInfo([void updates(SeriesTitleInfoBuilder b)]) =
      _$SeriesTitleInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesTitleInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesTitleInfo> get serializer =>
      _$SeriesTitleInfoSerializer();
}

class _$SeriesTitleInfoSerializer
    implements PrimitiveSerializer<SeriesTitleInfo> {
  @override
  final Iterable<Type> types = const [SeriesTitleInfo, _$SeriesTitleInfo];

  @override
  final String wireName = r'SeriesTitleInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesTitleInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.titleWithoutYear != null) {
      yield r'titleWithoutYear';
      yield serializers.serialize(
        object.titleWithoutYear,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.allTitles != null) {
      yield r'allTitles';
      yield serializers.serialize(
        object.allTitles,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesTitleInfo object, {
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
    required SeriesTitleInfoBuilder result,
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
        case r'titleWithoutYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.titleWithoutYear = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'allTitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allTitles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesTitleInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesTitleInfoBuilder();
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
