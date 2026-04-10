// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CountryInfoCWProxy {
  CountryInfo name(String? name);

  CountryInfo displayName(String? displayName);

  CountryInfo twoLetterISORegionName(String? twoLetterISORegionName);

  CountryInfo threeLetterISORegionName(String? threeLetterISORegionName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CountryInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CountryInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  CountryInfo call({
    String? name,
    String? displayName,
    String? twoLetterISORegionName,
    String? threeLetterISORegionName,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCountryInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCountryInfo.copyWith.fieldName(...)`
class _$CountryInfoCWProxyImpl implements _$CountryInfoCWProxy {
  const _$CountryInfoCWProxyImpl(this._value);

  final CountryInfo _value;

  @override
  CountryInfo name(String? name) => this(name: name);

  @override
  CountryInfo displayName(String? displayName) =>
      this(displayName: displayName);

  @override
  CountryInfo twoLetterISORegionName(String? twoLetterISORegionName) =>
      this(twoLetterISORegionName: twoLetterISORegionName);

  @override
  CountryInfo threeLetterISORegionName(String? threeLetterISORegionName) =>
      this(threeLetterISORegionName: threeLetterISORegionName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CountryInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CountryInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  CountryInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? twoLetterISORegionName = const $CopyWithPlaceholder(),
    Object? threeLetterISORegionName = const $CopyWithPlaceholder(),
  }) {
    return CountryInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      twoLetterISORegionName:
          twoLetterISORegionName == const $CopyWithPlaceholder()
          ? _value.twoLetterISORegionName
          // ignore: cast_nullable_to_non_nullable
          : twoLetterISORegionName as String?,
      threeLetterISORegionName:
          threeLetterISORegionName == const $CopyWithPlaceholder()
          ? _value.threeLetterISORegionName
          // ignore: cast_nullable_to_non_nullable
          : threeLetterISORegionName as String?,
    );
  }
}

extension $CountryInfoCopyWith on CountryInfo {
  /// Returns a callable class that can be used as follows: `instanceOfCountryInfo.copyWith(...)` or like so:`instanceOfCountryInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CountryInfoCWProxy get copyWith => _$CountryInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryInfo _$CountryInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'CountryInfo',
  json,
  ($checkedConvert) {
    final val = CountryInfo(
      name: $checkedConvert('Name', (v) => v as String?),
      displayName: $checkedConvert('DisplayName', (v) => v as String?),
      twoLetterISORegionName: $checkedConvert(
        'TwoLetterISORegionName',
        (v) => v as String?,
      ),
      threeLetterISORegionName: $checkedConvert(
        'ThreeLetterISORegionName',
        (v) => v as String?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'displayName': 'DisplayName',
    'twoLetterISORegionName': 'TwoLetterISORegionName',
    'threeLetterISORegionName': 'ThreeLetterISORegionName',
  },
);

Map<String, dynamic> _$CountryInfoToJson(CountryInfo instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'DisplayName': ?instance.displayName,
      'TwoLetterISORegionName': ?instance.twoLetterISORegionName,
      'ThreeLetterISORegionName': ?instance.threeLetterISORegionName,
    };
