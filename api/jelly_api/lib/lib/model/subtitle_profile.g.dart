// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtitle_profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SubtitleProfileCWProxy {
  SubtitleProfile format(String? format);

  SubtitleProfile method(SubtitleDeliveryMethod? method);

  SubtitleProfile didlMode(String? didlMode);

  SubtitleProfile language(String? language);

  SubtitleProfile container(String? container);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SubtitleProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SubtitleProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  SubtitleProfile call({
    String? format,
    SubtitleDeliveryMethod? method,
    String? didlMode,
    String? language,
    String? container,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSubtitleProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSubtitleProfile.copyWith.fieldName(...)`
class _$SubtitleProfileCWProxyImpl implements _$SubtitleProfileCWProxy {
  const _$SubtitleProfileCWProxyImpl(this._value);

  final SubtitleProfile _value;

  @override
  SubtitleProfile format(String? format) => this(format: format);

  @override
  SubtitleProfile method(SubtitleDeliveryMethod? method) =>
      this(method: method);

  @override
  SubtitleProfile didlMode(String? didlMode) => this(didlMode: didlMode);

  @override
  SubtitleProfile language(String? language) => this(language: language);

  @override
  SubtitleProfile container(String? container) => this(container: container);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SubtitleProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SubtitleProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  SubtitleProfile call({
    Object? format = const $CopyWithPlaceholder(),
    Object? method = const $CopyWithPlaceholder(),
    Object? didlMode = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
    Object? container = const $CopyWithPlaceholder(),
  }) {
    return SubtitleProfile(
      format: format == const $CopyWithPlaceholder()
          ? _value.format
          // ignore: cast_nullable_to_non_nullable
          : format as String?,
      method: method == const $CopyWithPlaceholder()
          ? _value.method
          // ignore: cast_nullable_to_non_nullable
          : method as SubtitleDeliveryMethod?,
      didlMode: didlMode == const $CopyWithPlaceholder()
          ? _value.didlMode
          // ignore: cast_nullable_to_non_nullable
          : didlMode as String?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as String?,
      container: container == const $CopyWithPlaceholder()
          ? _value.container
          // ignore: cast_nullable_to_non_nullable
          : container as String?,
    );
  }
}

extension $SubtitleProfileCopyWith on SubtitleProfile {
  /// Returns a callable class that can be used as follows: `instanceOfSubtitleProfile.copyWith(...)` or like so:`instanceOfSubtitleProfile.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SubtitleProfileCWProxy get copyWith => _$SubtitleProfileCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubtitleProfile _$SubtitleProfileFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SubtitleProfile',
      json,
      ($checkedConvert) {
        final val = SubtitleProfile(
          format: $checkedConvert('Format', (v) => v as String?),
          method: $checkedConvert(
            'Method',
            (v) => $enumDecodeNullable(_$SubtitleDeliveryMethodEnumMap, v),
          ),
          didlMode: $checkedConvert('DidlMode', (v) => v as String?),
          language: $checkedConvert('Language', (v) => v as String?),
          container: $checkedConvert('Container', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'format': 'Format',
        'method': 'Method',
        'didlMode': 'DidlMode',
        'language': 'Language',
        'container': 'Container',
      },
    );

Map<String, dynamic> _$SubtitleProfileToJson(SubtitleProfile instance) =>
    <String, dynamic>{
      'Format': ?instance.format,
      'Method': ?_$SubtitleDeliveryMethodEnumMap[instance.method],
      'DidlMode': ?instance.didlMode,
      'Language': ?instance.language,
      'Container': ?instance.container,
    };

const _$SubtitleDeliveryMethodEnumMap = {
  SubtitleDeliveryMethod.encode: 'Encode',
  SubtitleDeliveryMethod.embed: 'Embed',
  SubtitleDeliveryMethod.external_: 'External',
  SubtitleDeliveryMethod.hls: 'Hls',
  SubtitleDeliveryMethod.drop: 'Drop',
};
