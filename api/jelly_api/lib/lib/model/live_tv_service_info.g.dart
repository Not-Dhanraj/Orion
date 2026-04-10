// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_tv_service_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LiveTvServiceInfoCWProxy {
  LiveTvServiceInfo name(String? name);

  LiveTvServiceInfo homePageUrl(String? homePageUrl);

  LiveTvServiceInfo status(LiveTvServiceStatus? status);

  LiveTvServiceInfo statusMessage(String? statusMessage);

  LiveTvServiceInfo version(String? version);

  LiveTvServiceInfo hasUpdateAvailable(bool? hasUpdateAvailable);

  LiveTvServiceInfo isVisible(bool? isVisible);

  LiveTvServiceInfo tuners(List<String>? tuners);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveTvServiceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveTvServiceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveTvServiceInfo call({
    String? name,
    String? homePageUrl,
    LiveTvServiceStatus? status,
    String? statusMessage,
    String? version,
    bool? hasUpdateAvailable,
    bool? isVisible,
    List<String>? tuners,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLiveTvServiceInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLiveTvServiceInfo.copyWith.fieldName(...)`
class _$LiveTvServiceInfoCWProxyImpl implements _$LiveTvServiceInfoCWProxy {
  const _$LiveTvServiceInfoCWProxyImpl(this._value);

  final LiveTvServiceInfo _value;

  @override
  LiveTvServiceInfo name(String? name) => this(name: name);

  @override
  LiveTvServiceInfo homePageUrl(String? homePageUrl) =>
      this(homePageUrl: homePageUrl);

  @override
  LiveTvServiceInfo status(LiveTvServiceStatus? status) => this(status: status);

  @override
  LiveTvServiceInfo statusMessage(String? statusMessage) =>
      this(statusMessage: statusMessage);

  @override
  LiveTvServiceInfo version(String? version) => this(version: version);

  @override
  LiveTvServiceInfo hasUpdateAvailable(bool? hasUpdateAvailable) =>
      this(hasUpdateAvailable: hasUpdateAvailable);

  @override
  LiveTvServiceInfo isVisible(bool? isVisible) => this(isVisible: isVisible);

  @override
  LiveTvServiceInfo tuners(List<String>? tuners) => this(tuners: tuners);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveTvServiceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveTvServiceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveTvServiceInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? homePageUrl = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? statusMessage = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? hasUpdateAvailable = const $CopyWithPlaceholder(),
    Object? isVisible = const $CopyWithPlaceholder(),
    Object? tuners = const $CopyWithPlaceholder(),
  }) {
    return LiveTvServiceInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      homePageUrl: homePageUrl == const $CopyWithPlaceholder()
          ? _value.homePageUrl
          // ignore: cast_nullable_to_non_nullable
          : homePageUrl as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as LiveTvServiceStatus?,
      statusMessage: statusMessage == const $CopyWithPlaceholder()
          ? _value.statusMessage
          // ignore: cast_nullable_to_non_nullable
          : statusMessage as String?,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String?,
      hasUpdateAvailable: hasUpdateAvailable == const $CopyWithPlaceholder()
          ? _value.hasUpdateAvailable
          // ignore: cast_nullable_to_non_nullable
          : hasUpdateAvailable as bool?,
      isVisible: isVisible == const $CopyWithPlaceholder()
          ? _value.isVisible
          // ignore: cast_nullable_to_non_nullable
          : isVisible as bool?,
      tuners: tuners == const $CopyWithPlaceholder()
          ? _value.tuners
          // ignore: cast_nullable_to_non_nullable
          : tuners as List<String>?,
    );
  }
}

extension $LiveTvServiceInfoCopyWith on LiveTvServiceInfo {
  /// Returns a callable class that can be used as follows: `instanceOfLiveTvServiceInfo.copyWith(...)` or like so:`instanceOfLiveTvServiceInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LiveTvServiceInfoCWProxy get copyWith =>
      _$LiveTvServiceInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveTvServiceInfo _$LiveTvServiceInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LiveTvServiceInfo',
      json,
      ($checkedConvert) {
        final val = LiveTvServiceInfo(
          name: $checkedConvert('Name', (v) => v as String?),
          homePageUrl: $checkedConvert('HomePageUrl', (v) => v as String?),
          status: $checkedConvert(
            'Status',
            (v) => $enumDecodeNullable(_$LiveTvServiceStatusEnumMap, v),
          ),
          statusMessage: $checkedConvert('StatusMessage', (v) => v as String?),
          version: $checkedConvert('Version', (v) => v as String?),
          hasUpdateAvailable: $checkedConvert(
            'HasUpdateAvailable',
            (v) => v as bool?,
          ),
          isVisible: $checkedConvert('IsVisible', (v) => v as bool?),
          tuners: $checkedConvert(
            'Tuners',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'Name',
        'homePageUrl': 'HomePageUrl',
        'status': 'Status',
        'statusMessage': 'StatusMessage',
        'version': 'Version',
        'hasUpdateAvailable': 'HasUpdateAvailable',
        'isVisible': 'IsVisible',
        'tuners': 'Tuners',
      },
    );

Map<String, dynamic> _$LiveTvServiceInfoToJson(LiveTvServiceInfo instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'HomePageUrl': ?instance.homePageUrl,
      'Status': ?_$LiveTvServiceStatusEnumMap[instance.status],
      'StatusMessage': ?instance.statusMessage,
      'Version': ?instance.version,
      'HasUpdateAvailable': ?instance.hasUpdateAvailable,
      'IsVisible': ?instance.isVisible,
      'Tuners': ?instance.tuners,
    };

const _$LiveTvServiceStatusEnumMap = {
  LiveTvServiceStatus.ok: 'Ok',
  LiveTvServiceStatus.unavailable: 'Unavailable',
};
