// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_tv_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LiveTvInfoCWProxy {
  LiveTvInfo services(List<LiveTvServiceInfo>? services);

  LiveTvInfo isEnabled(bool? isEnabled);

  LiveTvInfo enabledUsers(List<String>? enabledUsers);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveTvInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveTvInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveTvInfo call({
    List<LiveTvServiceInfo>? services,
    bool? isEnabled,
    List<String>? enabledUsers,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLiveTvInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLiveTvInfo.copyWith.fieldName(...)`
class _$LiveTvInfoCWProxyImpl implements _$LiveTvInfoCWProxy {
  const _$LiveTvInfoCWProxyImpl(this._value);

  final LiveTvInfo _value;

  @override
  LiveTvInfo services(List<LiveTvServiceInfo>? services) =>
      this(services: services);

  @override
  LiveTvInfo isEnabled(bool? isEnabled) => this(isEnabled: isEnabled);

  @override
  LiveTvInfo enabledUsers(List<String>? enabledUsers) =>
      this(enabledUsers: enabledUsers);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveTvInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveTvInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveTvInfo call({
    Object? services = const $CopyWithPlaceholder(),
    Object? isEnabled = const $CopyWithPlaceholder(),
    Object? enabledUsers = const $CopyWithPlaceholder(),
  }) {
    return LiveTvInfo(
      services: services == const $CopyWithPlaceholder()
          ? _value.services
          // ignore: cast_nullable_to_non_nullable
          : services as List<LiveTvServiceInfo>?,
      isEnabled: isEnabled == const $CopyWithPlaceholder()
          ? _value.isEnabled
          // ignore: cast_nullable_to_non_nullable
          : isEnabled as bool?,
      enabledUsers: enabledUsers == const $CopyWithPlaceholder()
          ? _value.enabledUsers
          // ignore: cast_nullable_to_non_nullable
          : enabledUsers as List<String>?,
    );
  }
}

extension $LiveTvInfoCopyWith on LiveTvInfo {
  /// Returns a callable class that can be used as follows: `instanceOfLiveTvInfo.copyWith(...)` or like so:`instanceOfLiveTvInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LiveTvInfoCWProxy get copyWith => _$LiveTvInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveTvInfo _$LiveTvInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'LiveTvInfo',
  json,
  ($checkedConvert) {
    final val = LiveTvInfo(
      services: $checkedConvert(
        'Services',
        (v) => (v as List<dynamic>?)
            ?.map((e) => LiveTvServiceInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      isEnabled: $checkedConvert('IsEnabled', (v) => v as bool?),
      enabledUsers: $checkedConvert(
        'EnabledUsers',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'services': 'Services',
    'isEnabled': 'IsEnabled',
    'enabledUsers': 'EnabledUsers',
  },
);

Map<String, dynamic> _$LiveTvInfoToJson(LiveTvInfo instance) =>
    <String, dynamic>{
      'Services': ?instance.services?.map((e) => e.toJson()).toList(),
      'IsEnabled': ?instance.isEnabled,
      'EnabledUsers': ?instance.enabledUsers,
    };
