// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_uri.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpUri extends HttpUri {
  @override
  final String? fullUri;
  @override
  final String? scheme;
  @override
  final String? host;
  @override
  final int? port;
  @override
  final String? path;
  @override
  final String? query;
  @override
  final String? fragment;

  factory _$HttpUri([void Function(HttpUriBuilder)? updates]) =>
      (HttpUriBuilder()..update(updates))._build();

  _$HttpUri._(
      {this.fullUri,
      this.scheme,
      this.host,
      this.port,
      this.path,
      this.query,
      this.fragment})
      : super._();
  @override
  HttpUri rebuild(void Function(HttpUriBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpUriBuilder toBuilder() => HttpUriBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpUri &&
        fullUri == other.fullUri &&
        scheme == other.scheme &&
        host == other.host &&
        port == other.port &&
        path == other.path &&
        query == other.query &&
        fragment == other.fragment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fullUri.hashCode);
    _$hash = $jc(_$hash, scheme.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, fragment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HttpUri')
          ..add('fullUri', fullUri)
          ..add('scheme', scheme)
          ..add('host', host)
          ..add('port', port)
          ..add('path', path)
          ..add('query', query)
          ..add('fragment', fragment))
        .toString();
  }
}

class HttpUriBuilder implements Builder<HttpUri, HttpUriBuilder> {
  _$HttpUri? _$v;

  String? _fullUri;
  String? get fullUri => _$this._fullUri;
  set fullUri(String? fullUri) => _$this._fullUri = fullUri;

  String? _scheme;
  String? get scheme => _$this._scheme;
  set scheme(String? scheme) => _$this._scheme = scheme;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  String? _fragment;
  String? get fragment => _$this._fragment;
  set fragment(String? fragment) => _$this._fragment = fragment;

  HttpUriBuilder() {
    HttpUri._defaults(this);
  }

  HttpUriBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullUri = $v.fullUri;
      _scheme = $v.scheme;
      _host = $v.host;
      _port = $v.port;
      _path = $v.path;
      _query = $v.query;
      _fragment = $v.fragment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpUri other) {
    _$v = other as _$HttpUri;
  }

  @override
  void update(void Function(HttpUriBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpUri build() => _build();

  _$HttpUri _build() {
    final _$result = _$v ??
        _$HttpUri._(
          fullUri: fullUri,
          scheme: scheme,
          host: host,
          port: port,
          path: path,
          query: query,
          fragment: fragment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
