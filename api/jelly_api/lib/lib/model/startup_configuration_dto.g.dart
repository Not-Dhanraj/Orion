// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'startup_configuration_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StartupConfigurationDtoCWProxy {
  StartupConfigurationDto serverName(String? serverName);

  StartupConfigurationDto uICulture(String? uICulture);

  StartupConfigurationDto metadataCountryCode(String? metadataCountryCode);

  StartupConfigurationDto preferredMetadataLanguage(
    String? preferredMetadataLanguage,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StartupConfigurationDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StartupConfigurationDto(...).copyWith(id: 12, name: "My name")
  /// ````
  StartupConfigurationDto call({
    String? serverName,
    String? uICulture,
    String? metadataCountryCode,
    String? preferredMetadataLanguage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStartupConfigurationDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStartupConfigurationDto.copyWith.fieldName(...)`
class _$StartupConfigurationDtoCWProxyImpl
    implements _$StartupConfigurationDtoCWProxy {
  const _$StartupConfigurationDtoCWProxyImpl(this._value);

  final StartupConfigurationDto _value;

  @override
  StartupConfigurationDto serverName(String? serverName) =>
      this(serverName: serverName);

  @override
  StartupConfigurationDto uICulture(String? uICulture) =>
      this(uICulture: uICulture);

  @override
  StartupConfigurationDto metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  StartupConfigurationDto preferredMetadataLanguage(
    String? preferredMetadataLanguage,
  ) => this(preferredMetadataLanguage: preferredMetadataLanguage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StartupConfigurationDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StartupConfigurationDto(...).copyWith(id: 12, name: "My name")
  /// ````
  StartupConfigurationDto call({
    Object? serverName = const $CopyWithPlaceholder(),
    Object? uICulture = const $CopyWithPlaceholder(),
    Object? metadataCountryCode = const $CopyWithPlaceholder(),
    Object? preferredMetadataLanguage = const $CopyWithPlaceholder(),
  }) {
    return StartupConfigurationDto(
      serverName: serverName == const $CopyWithPlaceholder()
          ? _value.serverName
          // ignore: cast_nullable_to_non_nullable
          : serverName as String?,
      uICulture: uICulture == const $CopyWithPlaceholder()
          ? _value.uICulture
          // ignore: cast_nullable_to_non_nullable
          : uICulture as String?,
      metadataCountryCode: metadataCountryCode == const $CopyWithPlaceholder()
          ? _value.metadataCountryCode
          // ignore: cast_nullable_to_non_nullable
          : metadataCountryCode as String?,
      preferredMetadataLanguage:
          preferredMetadataLanguage == const $CopyWithPlaceholder()
          ? _value.preferredMetadataLanguage
          // ignore: cast_nullable_to_non_nullable
          : preferredMetadataLanguage as String?,
    );
  }
}

extension $StartupConfigurationDtoCopyWith on StartupConfigurationDto {
  /// Returns a callable class that can be used as follows: `instanceOfStartupConfigurationDto.copyWith(...)` or like so:`instanceOfStartupConfigurationDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StartupConfigurationDtoCWProxy get copyWith =>
      _$StartupConfigurationDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartupConfigurationDto _$StartupConfigurationDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'StartupConfigurationDto',
  json,
  ($checkedConvert) {
    final val = StartupConfigurationDto(
      serverName: $checkedConvert('ServerName', (v) => v as String?),
      uICulture: $checkedConvert('UICulture', (v) => v as String?),
      metadataCountryCode: $checkedConvert(
        'MetadataCountryCode',
        (v) => v as String?,
      ),
      preferredMetadataLanguage: $checkedConvert(
        'PreferredMetadataLanguage',
        (v) => v as String?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'serverName': 'ServerName',
    'uICulture': 'UICulture',
    'metadataCountryCode': 'MetadataCountryCode',
    'preferredMetadataLanguage': 'PreferredMetadataLanguage',
  },
);

Map<String, dynamic> _$StartupConfigurationDtoToJson(
  StartupConfigurationDto instance,
) => <String, dynamic>{
  'ServerName': ?instance.serverName,
  'UICulture': ?instance.uICulture,
  'MetadataCountryCode': ?instance.metadataCountryCode,
  'PreferredMetadataLanguage': ?instance.preferredMetadataLanguage,
};
