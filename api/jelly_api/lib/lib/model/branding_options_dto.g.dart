// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branding_options_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BrandingOptionsDtoCWProxy {
  BrandingOptionsDto loginDisclaimer(String? loginDisclaimer);

  BrandingOptionsDto customCss(String? customCss);

  BrandingOptionsDto splashscreenEnabled(bool? splashscreenEnabled);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BrandingOptionsDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BrandingOptionsDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BrandingOptionsDto call({
    String? loginDisclaimer,
    String? customCss,
    bool? splashscreenEnabled,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBrandingOptionsDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBrandingOptionsDto.copyWith.fieldName(...)`
class _$BrandingOptionsDtoCWProxyImpl implements _$BrandingOptionsDtoCWProxy {
  const _$BrandingOptionsDtoCWProxyImpl(this._value);

  final BrandingOptionsDto _value;

  @override
  BrandingOptionsDto loginDisclaimer(String? loginDisclaimer) =>
      this(loginDisclaimer: loginDisclaimer);

  @override
  BrandingOptionsDto customCss(String? customCss) => this(customCss: customCss);

  @override
  BrandingOptionsDto splashscreenEnabled(bool? splashscreenEnabled) =>
      this(splashscreenEnabled: splashscreenEnabled);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BrandingOptionsDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BrandingOptionsDto(...).copyWith(id: 12, name: "My name")
  /// ````
  BrandingOptionsDto call({
    Object? loginDisclaimer = const $CopyWithPlaceholder(),
    Object? customCss = const $CopyWithPlaceholder(),
    Object? splashscreenEnabled = const $CopyWithPlaceholder(),
  }) {
    return BrandingOptionsDto(
      loginDisclaimer: loginDisclaimer == const $CopyWithPlaceholder()
          ? _value.loginDisclaimer
          // ignore: cast_nullable_to_non_nullable
          : loginDisclaimer as String?,
      customCss: customCss == const $CopyWithPlaceholder()
          ? _value.customCss
          // ignore: cast_nullable_to_non_nullable
          : customCss as String?,
      splashscreenEnabled: splashscreenEnabled == const $CopyWithPlaceholder()
          ? _value.splashscreenEnabled
          // ignore: cast_nullable_to_non_nullable
          : splashscreenEnabled as bool?,
    );
  }
}

extension $BrandingOptionsDtoCopyWith on BrandingOptionsDto {
  /// Returns a callable class that can be used as follows: `instanceOfBrandingOptionsDto.copyWith(...)` or like so:`instanceOfBrandingOptionsDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BrandingOptionsDtoCWProxy get copyWith =>
      _$BrandingOptionsDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandingOptionsDto _$BrandingOptionsDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BrandingOptionsDto',
      json,
      ($checkedConvert) {
        final val = BrandingOptionsDto(
          loginDisclaimer: $checkedConvert(
            'LoginDisclaimer',
            (v) => v as String?,
          ),
          customCss: $checkedConvert('CustomCss', (v) => v as String?),
          splashscreenEnabled: $checkedConvert(
            'SplashscreenEnabled',
            (v) => v as bool?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'loginDisclaimer': 'LoginDisclaimer',
        'customCss': 'CustomCss',
        'splashscreenEnabled': 'SplashscreenEnabled',
      },
    );

Map<String, dynamic> _$BrandingOptionsDtoToJson(BrandingOptionsDto instance) =>
    <String, dynamic>{
      'LoginDisclaimer': ?instance.loginDisclaimer,
      'CustomCss': ?instance.customCss,
      'SplashscreenEnabled': ?instance.splashscreenEnabled,
    };
