// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_profile_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QualityProfileResourceCWProxy {
  QualityProfileResource id(int? id);

  QualityProfileResource name(String? name);

  QualityProfileResource upgradeAllowed(bool? upgradeAllowed);

  QualityProfileResource cutoff(int? cutoff);

  QualityProfileResource items(List<QualityProfileQualityItemResource>? items);

  QualityProfileResource minFormatScore(int? minFormatScore);

  QualityProfileResource cutoffFormatScore(int? cutoffFormatScore);

  QualityProfileResource minUpgradeFormatScore(int? minUpgradeFormatScore);

  QualityProfileResource formatItems(
    List<ProfileFormatItemResource>? formatItems,
  );

  QualityProfileResource language(Language? language);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityProfileResource call({
    int? id,
    String? name,
    bool? upgradeAllowed,
    int? cutoff,
    List<QualityProfileQualityItemResource>? items,
    int? minFormatScore,
    int? cutoffFormatScore,
    int? minUpgradeFormatScore,
    List<ProfileFormatItemResource>? formatItems,
    Language? language,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQualityProfileResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQualityProfileResource.copyWith.fieldName(...)`
class _$QualityProfileResourceCWProxyImpl
    implements _$QualityProfileResourceCWProxy {
  const _$QualityProfileResourceCWProxyImpl(this._value);

  final QualityProfileResource _value;

  @override
  QualityProfileResource id(int? id) => this(id: id);

  @override
  QualityProfileResource name(String? name) => this(name: name);

  @override
  QualityProfileResource upgradeAllowed(bool? upgradeAllowed) =>
      this(upgradeAllowed: upgradeAllowed);

  @override
  QualityProfileResource cutoff(int? cutoff) => this(cutoff: cutoff);

  @override
  QualityProfileResource items(
    List<QualityProfileQualityItemResource>? items,
  ) => this(items: items);

  @override
  QualityProfileResource minFormatScore(int? minFormatScore) =>
      this(minFormatScore: minFormatScore);

  @override
  QualityProfileResource cutoffFormatScore(int? cutoffFormatScore) =>
      this(cutoffFormatScore: cutoffFormatScore);

  @override
  QualityProfileResource minUpgradeFormatScore(int? minUpgradeFormatScore) =>
      this(minUpgradeFormatScore: minUpgradeFormatScore);

  @override
  QualityProfileResource formatItems(
    List<ProfileFormatItemResource>? formatItems,
  ) => this(formatItems: formatItems);

  @override
  QualityProfileResource language(Language? language) =>
      this(language: language);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QualityProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QualityProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QualityProfileResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? upgradeAllowed = const $CopyWithPlaceholder(),
    Object? cutoff = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? minFormatScore = const $CopyWithPlaceholder(),
    Object? cutoffFormatScore = const $CopyWithPlaceholder(),
    Object? minUpgradeFormatScore = const $CopyWithPlaceholder(),
    Object? formatItems = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
  }) {
    return QualityProfileResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      upgradeAllowed: upgradeAllowed == const $CopyWithPlaceholder()
          ? _value.upgradeAllowed
          // ignore: cast_nullable_to_non_nullable
          : upgradeAllowed as bool?,
      cutoff: cutoff == const $CopyWithPlaceholder()
          ? _value.cutoff
          // ignore: cast_nullable_to_non_nullable
          : cutoff as int?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<QualityProfileQualityItemResource>?,
      minFormatScore: minFormatScore == const $CopyWithPlaceholder()
          ? _value.minFormatScore
          // ignore: cast_nullable_to_non_nullable
          : minFormatScore as int?,
      cutoffFormatScore: cutoffFormatScore == const $CopyWithPlaceholder()
          ? _value.cutoffFormatScore
          // ignore: cast_nullable_to_non_nullable
          : cutoffFormatScore as int?,
      minUpgradeFormatScore:
          minUpgradeFormatScore == const $CopyWithPlaceholder()
          ? _value.minUpgradeFormatScore
          // ignore: cast_nullable_to_non_nullable
          : minUpgradeFormatScore as int?,
      formatItems: formatItems == const $CopyWithPlaceholder()
          ? _value.formatItems
          // ignore: cast_nullable_to_non_nullable
          : formatItems as List<ProfileFormatItemResource>?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as Language?,
    );
  }
}

extension $QualityProfileResourceCopyWith on QualityProfileResource {
  /// Returns a callable class that can be used as follows: `instanceOfQualityProfileResource.copyWith(...)` or like so:`instanceOfQualityProfileResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QualityProfileResourceCWProxy get copyWith =>
      _$QualityProfileResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QualityProfileResource _$QualityProfileResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('QualityProfileResource', json, ($checkedConvert) {
  final val = QualityProfileResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    upgradeAllowed: $checkedConvert('upgradeAllowed', (v) => v as bool?),
    cutoff: $checkedConvert('cutoff', (v) => (v as num?)?.toInt()),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => QualityProfileQualityItemResource.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    minFormatScore: $checkedConvert(
      'minFormatScore',
      (v) => (v as num?)?.toInt(),
    ),
    cutoffFormatScore: $checkedConvert(
      'cutoffFormatScore',
      (v) => (v as num?)?.toInt(),
    ),
    minUpgradeFormatScore: $checkedConvert(
      'minUpgradeFormatScore',
      (v) => (v as num?)?.toInt(),
    ),
    formatItems: $checkedConvert(
      'formatItems',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                ProfileFormatItemResource.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    language: $checkedConvert(
      'language',
      (v) => v == null ? null : Language.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$QualityProfileResourceToJson(
  QualityProfileResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'upgradeAllowed': ?instance.upgradeAllowed,
  'cutoff': ?instance.cutoff,
  'items': ?instance.items?.map((e) => e.toJson()).toList(),
  'minFormatScore': ?instance.minFormatScore,
  'cutoffFormatScore': ?instance.cutoffFormatScore,
  'minUpgradeFormatScore': ?instance.minUpgradeFormatScore,
  'formatItems': ?instance.formatItems?.map((e) => e.toJson()).toList(),
  'language': ?instance.language?.toJson(),
};
