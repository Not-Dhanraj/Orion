//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/language.dart';
import 'package:radarr/src/model/quality_profile_quality_item_resource.dart';
import 'package:radarr/src/model/profile_format_item_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quality_profile_resource.g.dart';

/// QualityProfileResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [upgradeAllowed]
/// * [cutoff]
/// * [items]
/// * [minFormatScore]
/// * [cutoffFormatScore]
/// * [minUpgradeFormatScore]
/// * [formatItems]
/// * [language]
@BuiltValue()
abstract class QualityProfileResource
    implements Built<QualityProfileResource, QualityProfileResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'upgradeAllowed')
  bool? get upgradeAllowed;

  @BuiltValueField(wireName: r'cutoff')
  int? get cutoff;

  @BuiltValueField(wireName: r'items')
  BuiltList<QualityProfileQualityItemResource>? get items;

  @BuiltValueField(wireName: r'minFormatScore')
  int? get minFormatScore;

  @BuiltValueField(wireName: r'cutoffFormatScore')
  int? get cutoffFormatScore;

  @BuiltValueField(wireName: r'minUpgradeFormatScore')
  int? get minUpgradeFormatScore;

  @BuiltValueField(wireName: r'formatItems')
  BuiltList<ProfileFormatItemResource>? get formatItems;

  @BuiltValueField(wireName: r'language')
  Language? get language;

  QualityProfileResource._();

  factory QualityProfileResource(
          [void updates(QualityProfileResourceBuilder b)]) =
      _$QualityProfileResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QualityProfileResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QualityProfileResource> get serializer =>
      _$QualityProfileResourceSerializer();
}

class _$QualityProfileResourceSerializer
    implements PrimitiveSerializer<QualityProfileResource> {
  @override
  final Iterable<Type> types = const [
    QualityProfileResource,
    _$QualityProfileResource
  ];

  @override
  final String wireName = r'QualityProfileResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QualityProfileResource object, {
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
    if (object.upgradeAllowed != null) {
      yield r'upgradeAllowed';
      yield serializers.serialize(
        object.upgradeAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cutoff != null) {
      yield r'cutoff';
      yield serializers.serialize(
        object.cutoff,
        specifiedType: const FullType(int),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(QualityProfileQualityItemResource)]),
      );
    }
    if (object.minFormatScore != null) {
      yield r'minFormatScore';
      yield serializers.serialize(
        object.minFormatScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.cutoffFormatScore != null) {
      yield r'cutoffFormatScore';
      yield serializers.serialize(
        object.cutoffFormatScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.minUpgradeFormatScore != null) {
      yield r'minUpgradeFormatScore';
      yield serializers.serialize(
        object.minUpgradeFormatScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.formatItems != null) {
      yield r'formatItems';
      yield serializers.serialize(
        object.formatItems,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(ProfileFormatItemResource)]),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(Language),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QualityProfileResource object, {
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
    required QualityProfileResourceBuilder result,
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
        case r'upgradeAllowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.upgradeAllowed = valueDes;
          break;
        case r'cutoff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cutoff = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(QualityProfileQualityItemResource)]),
          ) as BuiltList<QualityProfileQualityItemResource>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'minFormatScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minFormatScore = valueDes;
          break;
        case r'cutoffFormatScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cutoffFormatScore = valueDes;
          break;
        case r'minUpgradeFormatScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minUpgradeFormatScore = valueDes;
          break;
        case r'formatItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ProfileFormatItemResource)]),
          ) as BuiltList<ProfileFormatItemResource>?;
          if (valueDes == null) continue;
          result.formatItems.replace(valueDes);
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Language),
          ) as Language;
          result.language.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QualityProfileResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QualityProfileResourceBuilder();
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
