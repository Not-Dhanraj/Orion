// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_subtitle_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UploadSubtitleDtoCWProxy {
  UploadSubtitleDto language(String language);

  UploadSubtitleDto format(String format);

  UploadSubtitleDto isForced(bool isForced);

  UploadSubtitleDto isHearingImpaired(bool isHearingImpaired);

  UploadSubtitleDto data(String data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadSubtitleDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadSubtitleDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadSubtitleDto call({
    String language,
    String format,
    bool isForced,
    bool isHearingImpaired,
    String data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUploadSubtitleDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUploadSubtitleDto.copyWith.fieldName(...)`
class _$UploadSubtitleDtoCWProxyImpl implements _$UploadSubtitleDtoCWProxy {
  const _$UploadSubtitleDtoCWProxyImpl(this._value);

  final UploadSubtitleDto _value;

  @override
  UploadSubtitleDto language(String language) => this(language: language);

  @override
  UploadSubtitleDto format(String format) => this(format: format);

  @override
  UploadSubtitleDto isForced(bool isForced) => this(isForced: isForced);

  @override
  UploadSubtitleDto isHearingImpaired(bool isHearingImpaired) =>
      this(isHearingImpaired: isHearingImpaired);

  @override
  UploadSubtitleDto data(String data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadSubtitleDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadSubtitleDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadSubtitleDto call({
    Object? language = const $CopyWithPlaceholder(),
    Object? format = const $CopyWithPlaceholder(),
    Object? isForced = const $CopyWithPlaceholder(),
    Object? isHearingImpaired = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return UploadSubtitleDto(
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as String,
      format: format == const $CopyWithPlaceholder()
          ? _value.format
          // ignore: cast_nullable_to_non_nullable
          : format as String,
      isForced: isForced == const $CopyWithPlaceholder()
          ? _value.isForced
          // ignore: cast_nullable_to_non_nullable
          : isForced as bool,
      isHearingImpaired: isHearingImpaired == const $CopyWithPlaceholder()
          ? _value.isHearingImpaired
          // ignore: cast_nullable_to_non_nullable
          : isHearingImpaired as bool,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as String,
    );
  }
}

extension $UploadSubtitleDtoCopyWith on UploadSubtitleDto {
  /// Returns a callable class that can be used as follows: `instanceOfUploadSubtitleDto.copyWith(...)` or like so:`instanceOfUploadSubtitleDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UploadSubtitleDtoCWProxy get copyWith =>
      _$UploadSubtitleDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadSubtitleDto _$UploadSubtitleDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UploadSubtitleDto',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'Language',
            'Format',
            'IsForced',
            'IsHearingImpaired',
            'Data',
          ],
        );
        final val = UploadSubtitleDto(
          language: $checkedConvert('Language', (v) => v as String),
          format: $checkedConvert('Format', (v) => v as String),
          isForced: $checkedConvert('IsForced', (v) => v as bool),
          isHearingImpaired: $checkedConvert(
            'IsHearingImpaired',
            (v) => v as bool,
          ),
          data: $checkedConvert('Data', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'language': 'Language',
        'format': 'Format',
        'isForced': 'IsForced',
        'isHearingImpaired': 'IsHearingImpaired',
        'data': 'Data',
      },
    );

Map<String, dynamic> _$UploadSubtitleDtoToJson(UploadSubtitleDto instance) =>
    <String, dynamic>{
      'Language': instance.language,
      'Format': instance.format,
      'IsForced': instance.isForced,
      'IsHearingImpaired': instance.isHearingImpaired,
      'Data': instance.data,
    };
