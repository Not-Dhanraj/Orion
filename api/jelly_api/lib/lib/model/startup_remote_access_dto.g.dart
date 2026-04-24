// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'startup_remote_access_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StartupRemoteAccessDtoCWProxy {
  StartupRemoteAccessDto enableRemoteAccess(bool enableRemoteAccess);

  StartupRemoteAccessDto enableAutomaticPortMapping(
    bool enableAutomaticPortMapping,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StartupRemoteAccessDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StartupRemoteAccessDto(...).copyWith(id: 12, name: "My name")
  /// ````
  StartupRemoteAccessDto call({
    bool enableRemoteAccess,
    bool enableAutomaticPortMapping,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStartupRemoteAccessDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStartupRemoteAccessDto.copyWith.fieldName(...)`
class _$StartupRemoteAccessDtoCWProxyImpl
    implements _$StartupRemoteAccessDtoCWProxy {
  const _$StartupRemoteAccessDtoCWProxyImpl(this._value);

  final StartupRemoteAccessDto _value;

  @override
  StartupRemoteAccessDto enableRemoteAccess(bool enableRemoteAccess) =>
      this(enableRemoteAccess: enableRemoteAccess);

  @override
  StartupRemoteAccessDto enableAutomaticPortMapping(
    bool enableAutomaticPortMapping,
  ) => this(enableAutomaticPortMapping: enableAutomaticPortMapping);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StartupRemoteAccessDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StartupRemoteAccessDto(...).copyWith(id: 12, name: "My name")
  /// ````
  StartupRemoteAccessDto call({
    Object? enableRemoteAccess = const $CopyWithPlaceholder(),
    Object? enableAutomaticPortMapping = const $CopyWithPlaceholder(),
  }) {
    return StartupRemoteAccessDto(
      enableRemoteAccess: enableRemoteAccess == const $CopyWithPlaceholder()
          ? _value.enableRemoteAccess
          // ignore: cast_nullable_to_non_nullable
          : enableRemoteAccess as bool,
      enableAutomaticPortMapping:
          enableAutomaticPortMapping == const $CopyWithPlaceholder()
          ? _value.enableAutomaticPortMapping
          // ignore: cast_nullable_to_non_nullable
          : enableAutomaticPortMapping as bool,
    );
  }
}

extension $StartupRemoteAccessDtoCopyWith on StartupRemoteAccessDto {
  /// Returns a callable class that can be used as follows: `instanceOfStartupRemoteAccessDto.copyWith(...)` or like so:`instanceOfStartupRemoteAccessDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StartupRemoteAccessDtoCWProxy get copyWith =>
      _$StartupRemoteAccessDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartupRemoteAccessDto _$StartupRemoteAccessDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'StartupRemoteAccessDto',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['EnableRemoteAccess', 'EnableAutomaticPortMapping'],
    );
    final val = StartupRemoteAccessDto(
      enableRemoteAccess: $checkedConvert(
        'EnableRemoteAccess',
        (v) => v as bool,
      ),
      enableAutomaticPortMapping: $checkedConvert(
        'EnableAutomaticPortMapping',
        (v) => v as bool,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'enableRemoteAccess': 'EnableRemoteAccess',
    'enableAutomaticPortMapping': 'EnableAutomaticPortMapping',
  },
);

Map<String, dynamic> _$StartupRemoteAccessDtoToJson(
  StartupRemoteAccessDto instance,
) => <String, dynamic>{
  'EnableRemoteAccess': instance.enableRemoteAccess,
  'EnableAutomaticPortMapping': instance.enableAutomaticPortMapping,
};
