// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_url.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ExternalUrlCWProxy {
  ExternalUrl name(String? name);

  ExternalUrl url(String? url);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExternalUrl(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExternalUrl(...).copyWith(id: 12, name: "My name")
  /// ````
  ExternalUrl call({String? name, String? url});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfExternalUrl.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfExternalUrl.copyWith.fieldName(...)`
class _$ExternalUrlCWProxyImpl implements _$ExternalUrlCWProxy {
  const _$ExternalUrlCWProxyImpl(this._value);

  final ExternalUrl _value;

  @override
  ExternalUrl name(String? name) => this(name: name);

  @override
  ExternalUrl url(String? url) => this(url: url);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExternalUrl(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExternalUrl(...).copyWith(id: 12, name: "My name")
  /// ````
  ExternalUrl call({
    Object? name = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
  }) {
    return ExternalUrl(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
    );
  }
}

extension $ExternalUrlCopyWith on ExternalUrl {
  /// Returns a callable class that can be used as follows: `instanceOfExternalUrl.copyWith(...)` or like so:`instanceOfExternalUrl.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ExternalUrlCWProxy get copyWith => _$ExternalUrlCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalUrl _$ExternalUrlFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ExternalUrl', json, ($checkedConvert) {
      final val = ExternalUrl(
        name: $checkedConvert('Name', (v) => v as String?),
        url: $checkedConvert('Url', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'name': 'Name', 'url': 'Url'});

Map<String, dynamic> _$ExternalUrlToJson(ExternalUrl instance) =>
    <String, dynamic>{'Name': ?instance.name, 'Url': ?instance.url};
