// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_info_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiInfoResource extends ApiInfoResource {
  @override
  final String? current;
  @override
  final BuiltList<String>? deprecated;

  factory _$ApiInfoResource([void Function(ApiInfoResourceBuilder)? updates]) =>
      (ApiInfoResourceBuilder()..update(updates))._build();

  _$ApiInfoResource._({this.current, this.deprecated}) : super._();
  @override
  ApiInfoResource rebuild(void Function(ApiInfoResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiInfoResourceBuilder toBuilder() => ApiInfoResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiInfoResource &&
        current == other.current &&
        deprecated == other.deprecated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, deprecated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiInfoResource')
          ..add('current', current)
          ..add('deprecated', deprecated))
        .toString();
  }
}

class ApiInfoResourceBuilder
    implements Builder<ApiInfoResource, ApiInfoResourceBuilder> {
  _$ApiInfoResource? _$v;

  String? _current;
  String? get current => _$this._current;
  set current(String? current) => _$this._current = current;

  ListBuilder<String>? _deprecated;
  ListBuilder<String> get deprecated =>
      _$this._deprecated ??= ListBuilder<String>();
  set deprecated(ListBuilder<String>? deprecated) =>
      _$this._deprecated = deprecated;

  ApiInfoResourceBuilder() {
    ApiInfoResource._defaults(this);
  }

  ApiInfoResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current;
      _deprecated = $v.deprecated?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiInfoResource other) {
    _$v = other as _$ApiInfoResource;
  }

  @override
  void update(void Function(ApiInfoResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiInfoResource build() => _build();

  _$ApiInfoResource _build() {
    _$ApiInfoResource _$result;
    try {
      _$result = _$v ??
          _$ApiInfoResource._(
            current: current,
            deprecated: _deprecated?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deprecated';
        _deprecated?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiInfoResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
