// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_url.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaUrlCWProxy {
  MediaUrl url(String? url);

  MediaUrl name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaUrl(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaUrl(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaUrl call({String? url, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaUrl.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaUrl.copyWith.fieldName(...)`
class _$MediaUrlCWProxyImpl implements _$MediaUrlCWProxy {
  const _$MediaUrlCWProxyImpl(this._value);

  final MediaUrl _value;

  @override
  MediaUrl url(String? url) => this(url: url);

  @override
  MediaUrl name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaUrl(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaUrl(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaUrl call({
    Object? url = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return MediaUrl(
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $MediaUrlCopyWith on MediaUrl {
  /// Returns a callable class that can be used as follows: `instanceOfMediaUrl.copyWith(...)` or like so:`instanceOfMediaUrl.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaUrlCWProxy get copyWith => _$MediaUrlCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaUrl _$MediaUrlFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MediaUrl', json, ($checkedConvert) {
      final val = MediaUrl(
        url: $checkedConvert('Url', (v) => v as String?),
        name: $checkedConvert('Name', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'url': 'Url', 'name': 'Name'});

Map<String, dynamic> _$MediaUrlToJson(MediaUrl instance) => <String, dynamic>{
  'Url': ?instance.url,
  'Name': ?instance.name,
};
