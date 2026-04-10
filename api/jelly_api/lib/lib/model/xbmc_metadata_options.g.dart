// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xbmc_metadata_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$XbmcMetadataOptionsCWProxy {
  XbmcMetadataOptions userId(String? userId);

  XbmcMetadataOptions releaseDateFormat(String? releaseDateFormat);

  XbmcMetadataOptions saveImagePathsInNfo(bool? saveImagePathsInNfo);

  XbmcMetadataOptions enablePathSubstitution(bool? enablePathSubstitution);

  XbmcMetadataOptions enableExtraThumbsDuplication(
    bool? enableExtraThumbsDuplication,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `XbmcMetadataOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// XbmcMetadataOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  XbmcMetadataOptions call({
    String? userId,
    String? releaseDateFormat,
    bool? saveImagePathsInNfo,
    bool? enablePathSubstitution,
    bool? enableExtraThumbsDuplication,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfXbmcMetadataOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfXbmcMetadataOptions.copyWith.fieldName(...)`
class _$XbmcMetadataOptionsCWProxyImpl implements _$XbmcMetadataOptionsCWProxy {
  const _$XbmcMetadataOptionsCWProxyImpl(this._value);

  final XbmcMetadataOptions _value;

  @override
  XbmcMetadataOptions userId(String? userId) => this(userId: userId);

  @override
  XbmcMetadataOptions releaseDateFormat(String? releaseDateFormat) =>
      this(releaseDateFormat: releaseDateFormat);

  @override
  XbmcMetadataOptions saveImagePathsInNfo(bool? saveImagePathsInNfo) =>
      this(saveImagePathsInNfo: saveImagePathsInNfo);

  @override
  XbmcMetadataOptions enablePathSubstitution(bool? enablePathSubstitution) =>
      this(enablePathSubstitution: enablePathSubstitution);

  @override
  XbmcMetadataOptions enableExtraThumbsDuplication(
    bool? enableExtraThumbsDuplication,
  ) => this(enableExtraThumbsDuplication: enableExtraThumbsDuplication);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `XbmcMetadataOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// XbmcMetadataOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  XbmcMetadataOptions call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? releaseDateFormat = const $CopyWithPlaceholder(),
    Object? saveImagePathsInNfo = const $CopyWithPlaceholder(),
    Object? enablePathSubstitution = const $CopyWithPlaceholder(),
    Object? enableExtraThumbsDuplication = const $CopyWithPlaceholder(),
  }) {
    return XbmcMetadataOptions(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      releaseDateFormat: releaseDateFormat == const $CopyWithPlaceholder()
          ? _value.releaseDateFormat
          // ignore: cast_nullable_to_non_nullable
          : releaseDateFormat as String?,
      saveImagePathsInNfo: saveImagePathsInNfo == const $CopyWithPlaceholder()
          ? _value.saveImagePathsInNfo
          // ignore: cast_nullable_to_non_nullable
          : saveImagePathsInNfo as bool?,
      enablePathSubstitution:
          enablePathSubstitution == const $CopyWithPlaceholder()
          ? _value.enablePathSubstitution
          // ignore: cast_nullable_to_non_nullable
          : enablePathSubstitution as bool?,
      enableExtraThumbsDuplication:
          enableExtraThumbsDuplication == const $CopyWithPlaceholder()
          ? _value.enableExtraThumbsDuplication
          // ignore: cast_nullable_to_non_nullable
          : enableExtraThumbsDuplication as bool?,
    );
  }
}

extension $XbmcMetadataOptionsCopyWith on XbmcMetadataOptions {
  /// Returns a callable class that can be used as follows: `instanceOfXbmcMetadataOptions.copyWith(...)` or like so:`instanceOfXbmcMetadataOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$XbmcMetadataOptionsCWProxy get copyWith =>
      _$XbmcMetadataOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

XbmcMetadataOptions _$XbmcMetadataOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'XbmcMetadataOptions',
      json,
      ($checkedConvert) {
        final val = XbmcMetadataOptions(
          userId: $checkedConvert('UserId', (v) => v as String?),
          releaseDateFormat: $checkedConvert(
            'ReleaseDateFormat',
            (v) => v as String?,
          ),
          saveImagePathsInNfo: $checkedConvert(
            'SaveImagePathsInNfo',
            (v) => v as bool?,
          ),
          enablePathSubstitution: $checkedConvert(
            'EnablePathSubstitution',
            (v) => v as bool?,
          ),
          enableExtraThumbsDuplication: $checkedConvert(
            'EnableExtraThumbsDuplication',
            (v) => v as bool?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'userId': 'UserId',
        'releaseDateFormat': 'ReleaseDateFormat',
        'saveImagePathsInNfo': 'SaveImagePathsInNfo',
        'enablePathSubstitution': 'EnablePathSubstitution',
        'enableExtraThumbsDuplication': 'EnableExtraThumbsDuplication',
      },
    );

Map<String, dynamic> _$XbmcMetadataOptionsToJson(
  XbmcMetadataOptions instance,
) => <String, dynamic>{
  'UserId': ?instance.userId,
  'ReleaseDateFormat': ?instance.releaseDateFormat,
  'SaveImagePathsInNfo': ?instance.saveImagePathsInNfo,
  'EnablePathSubstitution': ?instance.enablePathSubstitution,
  'EnableExtraThumbsDuplication': ?instance.enableExtraThumbsDuplication,
};
