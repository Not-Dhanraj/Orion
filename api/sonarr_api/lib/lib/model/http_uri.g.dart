// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_uri.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HttpUriCWProxy {
  HttpUri fullUri(String? fullUri);

  HttpUri scheme(String? scheme);

  HttpUri host(String? host);

  HttpUri port(int? port);

  HttpUri path(String? path);

  HttpUri query(String? query);

  HttpUri fragment(String? fragment);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HttpUri(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HttpUri(...).copyWith(id: 12, name: "My name")
  /// ````
  HttpUri call({
    String? fullUri,
    String? scheme,
    String? host,
    int? port,
    String? path,
    String? query,
    String? fragment,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHttpUri.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHttpUri.copyWith.fieldName(...)`
class _$HttpUriCWProxyImpl implements _$HttpUriCWProxy {
  const _$HttpUriCWProxyImpl(this._value);

  final HttpUri _value;

  @override
  HttpUri fullUri(String? fullUri) => this(fullUri: fullUri);

  @override
  HttpUri scheme(String? scheme) => this(scheme: scheme);

  @override
  HttpUri host(String? host) => this(host: host);

  @override
  HttpUri port(int? port) => this(port: port);

  @override
  HttpUri path(String? path) => this(path: path);

  @override
  HttpUri query(String? query) => this(query: query);

  @override
  HttpUri fragment(String? fragment) => this(fragment: fragment);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HttpUri(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HttpUri(...).copyWith(id: 12, name: "My name")
  /// ````
  HttpUri call({
    Object? fullUri = const $CopyWithPlaceholder(),
    Object? scheme = const $CopyWithPlaceholder(),
    Object? host = const $CopyWithPlaceholder(),
    Object? port = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? query = const $CopyWithPlaceholder(),
    Object? fragment = const $CopyWithPlaceholder(),
  }) {
    return HttpUri(
      fullUri: fullUri == const $CopyWithPlaceholder()
          ? _value.fullUri
          // ignore: cast_nullable_to_non_nullable
          : fullUri as String?,
      scheme: scheme == const $CopyWithPlaceholder()
          ? _value.scheme
          // ignore: cast_nullable_to_non_nullable
          : scheme as String?,
      host: host == const $CopyWithPlaceholder()
          ? _value.host
          // ignore: cast_nullable_to_non_nullable
          : host as String?,
      port: port == const $CopyWithPlaceholder()
          ? _value.port
          // ignore: cast_nullable_to_non_nullable
          : port as int?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      query: query == const $CopyWithPlaceholder()
          ? _value.query
          // ignore: cast_nullable_to_non_nullable
          : query as String?,
      fragment: fragment == const $CopyWithPlaceholder()
          ? _value.fragment
          // ignore: cast_nullable_to_non_nullable
          : fragment as String?,
    );
  }
}

extension $HttpUriCopyWith on HttpUri {
  /// Returns a callable class that can be used as follows: `instanceOfHttpUri.copyWith(...)` or like so:`instanceOfHttpUri.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HttpUriCWProxy get copyWith => _$HttpUriCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpUri _$HttpUriFromJson(Map<String, dynamic> json) =>
    $checkedCreate('HttpUri', json, ($checkedConvert) {
      final val = HttpUri(
        fullUri: $checkedConvert('fullUri', (v) => v as String?),
        scheme: $checkedConvert('scheme', (v) => v as String?),
        host: $checkedConvert('host', (v) => v as String?),
        port: $checkedConvert('port', (v) => (v as num?)?.toInt()),
        path: $checkedConvert('path', (v) => v as String?),
        query: $checkedConvert('query', (v) => v as String?),
        fragment: $checkedConvert('fragment', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$HttpUriToJson(HttpUri instance) => <String, dynamic>{
  'fullUri': ?instance.fullUri,
  'scheme': ?instance.scheme,
  'host': ?instance.host,
  'port': ?instance.port,
  'path': ?instance.path,
  'query': ?instance.query,
  'fragment': ?instance.fragment,
};
