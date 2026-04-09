// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delay_profile_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DelayProfileResourceCWProxy {
  DelayProfileResource id(int? id);

  DelayProfileResource enableUsenet(bool? enableUsenet);

  DelayProfileResource enableTorrent(bool? enableTorrent);

  DelayProfileResource preferredProtocol(DownloadProtocol? preferredProtocol);

  DelayProfileResource usenetDelay(int? usenetDelay);

  DelayProfileResource torrentDelay(int? torrentDelay);

  DelayProfileResource bypassIfHighestQuality(bool? bypassIfHighestQuality);

  DelayProfileResource bypassIfAboveCustomFormatScore(
    bool? bypassIfAboveCustomFormatScore,
  );

  DelayProfileResource minimumCustomFormatScore(int? minimumCustomFormatScore);

  DelayProfileResource order(int? order);

  DelayProfileResource tags(Set<int>? tags);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DelayProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DelayProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DelayProfileResource call({
    int? id,
    bool? enableUsenet,
    bool? enableTorrent,
    DownloadProtocol? preferredProtocol,
    int? usenetDelay,
    int? torrentDelay,
    bool? bypassIfHighestQuality,
    bool? bypassIfAboveCustomFormatScore,
    int? minimumCustomFormatScore,
    int? order,
    Set<int>? tags,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDelayProfileResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDelayProfileResource.copyWith.fieldName(...)`
class _$DelayProfileResourceCWProxyImpl
    implements _$DelayProfileResourceCWProxy {
  const _$DelayProfileResourceCWProxyImpl(this._value);

  final DelayProfileResource _value;

  @override
  DelayProfileResource id(int? id) => this(id: id);

  @override
  DelayProfileResource enableUsenet(bool? enableUsenet) =>
      this(enableUsenet: enableUsenet);

  @override
  DelayProfileResource enableTorrent(bool? enableTorrent) =>
      this(enableTorrent: enableTorrent);

  @override
  DelayProfileResource preferredProtocol(DownloadProtocol? preferredProtocol) =>
      this(preferredProtocol: preferredProtocol);

  @override
  DelayProfileResource usenetDelay(int? usenetDelay) =>
      this(usenetDelay: usenetDelay);

  @override
  DelayProfileResource torrentDelay(int? torrentDelay) =>
      this(torrentDelay: torrentDelay);

  @override
  DelayProfileResource bypassIfHighestQuality(bool? bypassIfHighestQuality) =>
      this(bypassIfHighestQuality: bypassIfHighestQuality);

  @override
  DelayProfileResource bypassIfAboveCustomFormatScore(
    bool? bypassIfAboveCustomFormatScore,
  ) => this(bypassIfAboveCustomFormatScore: bypassIfAboveCustomFormatScore);

  @override
  DelayProfileResource minimumCustomFormatScore(
    int? minimumCustomFormatScore,
  ) => this(minimumCustomFormatScore: minimumCustomFormatScore);

  @override
  DelayProfileResource order(int? order) => this(order: order);

  @override
  DelayProfileResource tags(Set<int>? tags) => this(tags: tags);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DelayProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DelayProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DelayProfileResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? enableUsenet = const $CopyWithPlaceholder(),
    Object? enableTorrent = const $CopyWithPlaceholder(),
    Object? preferredProtocol = const $CopyWithPlaceholder(),
    Object? usenetDelay = const $CopyWithPlaceholder(),
    Object? torrentDelay = const $CopyWithPlaceholder(),
    Object? bypassIfHighestQuality = const $CopyWithPlaceholder(),
    Object? bypassIfAboveCustomFormatScore = const $CopyWithPlaceholder(),
    Object? minimumCustomFormatScore = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
  }) {
    return DelayProfileResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      enableUsenet: enableUsenet == const $CopyWithPlaceholder()
          ? _value.enableUsenet
          // ignore: cast_nullable_to_non_nullable
          : enableUsenet as bool?,
      enableTorrent: enableTorrent == const $CopyWithPlaceholder()
          ? _value.enableTorrent
          // ignore: cast_nullable_to_non_nullable
          : enableTorrent as bool?,
      preferredProtocol: preferredProtocol == const $CopyWithPlaceholder()
          ? _value.preferredProtocol
          // ignore: cast_nullable_to_non_nullable
          : preferredProtocol as DownloadProtocol?,
      usenetDelay: usenetDelay == const $CopyWithPlaceholder()
          ? _value.usenetDelay
          // ignore: cast_nullable_to_non_nullable
          : usenetDelay as int?,
      torrentDelay: torrentDelay == const $CopyWithPlaceholder()
          ? _value.torrentDelay
          // ignore: cast_nullable_to_non_nullable
          : torrentDelay as int?,
      bypassIfHighestQuality:
          bypassIfHighestQuality == const $CopyWithPlaceholder()
          ? _value.bypassIfHighestQuality
          // ignore: cast_nullable_to_non_nullable
          : bypassIfHighestQuality as bool?,
      bypassIfAboveCustomFormatScore:
          bypassIfAboveCustomFormatScore == const $CopyWithPlaceholder()
          ? _value.bypassIfAboveCustomFormatScore
          // ignore: cast_nullable_to_non_nullable
          : bypassIfAboveCustomFormatScore as bool?,
      minimumCustomFormatScore:
          minimumCustomFormatScore == const $CopyWithPlaceholder()
          ? _value.minimumCustomFormatScore
          // ignore: cast_nullable_to_non_nullable
          : minimumCustomFormatScore as int?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as int?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Set<int>?,
    );
  }
}

extension $DelayProfileResourceCopyWith on DelayProfileResource {
  /// Returns a callable class that can be used as follows: `instanceOfDelayProfileResource.copyWith(...)` or like so:`instanceOfDelayProfileResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DelayProfileResourceCWProxy get copyWith =>
      _$DelayProfileResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DelayProfileResource _$DelayProfileResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DelayProfileResource', json, ($checkedConvert) {
  final val = DelayProfileResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    enableUsenet: $checkedConvert('enableUsenet', (v) => v as bool?),
    enableTorrent: $checkedConvert('enableTorrent', (v) => v as bool?),
    preferredProtocol: $checkedConvert(
      'preferredProtocol',
      (v) => $enumDecodeNullable(_$DownloadProtocolEnumMap, v),
    ),
    usenetDelay: $checkedConvert('usenetDelay', (v) => (v as num?)?.toInt()),
    torrentDelay: $checkedConvert('torrentDelay', (v) => (v as num?)?.toInt()),
    bypassIfHighestQuality: $checkedConvert(
      'bypassIfHighestQuality',
      (v) => v as bool?,
    ),
    bypassIfAboveCustomFormatScore: $checkedConvert(
      'bypassIfAboveCustomFormatScore',
      (v) => v as bool?,
    ),
    minimumCustomFormatScore: $checkedConvert(
      'minimumCustomFormatScore',
      (v) => (v as num?)?.toInt(),
    ),
    order: $checkedConvert('order', (v) => (v as num?)?.toInt()),
    tags: $checkedConvert(
      'tags',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet(),
    ),
  );
  return val;
});

Map<String, dynamic> _$DelayProfileResourceToJson(
  DelayProfileResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'enableUsenet': ?instance.enableUsenet,
  'enableTorrent': ?instance.enableTorrent,
  'preferredProtocol': ?_$DownloadProtocolEnumMap[instance.preferredProtocol],
  'usenetDelay': ?instance.usenetDelay,
  'torrentDelay': ?instance.torrentDelay,
  'bypassIfHighestQuality': ?instance.bypassIfHighestQuality,
  'bypassIfAboveCustomFormatScore': ?instance.bypassIfAboveCustomFormatScore,
  'minimumCustomFormatScore': ?instance.minimumCustomFormatScore,
  'order': ?instance.order,
  'tags': ?instance.tags?.toList(),
};

const _$DownloadProtocolEnumMap = {
  DownloadProtocol.unknown: 'unknown',
  DownloadProtocol.usenet: 'usenet',
  DownloadProtocol.torrent: 'torrent',
};
