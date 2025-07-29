// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthResource extends HealthResource {
  @override
  final int? id;
  @override
  final String? source_;
  @override
  final HealthCheckResult? type;
  @override
  final String? message;
  @override
  final HttpUri? wikiUrl;

  factory _$HealthResource([void Function(HealthResourceBuilder)? updates]) =>
      (HealthResourceBuilder()..update(updates))._build();

  _$HealthResource._(
      {this.id, this.source_, this.type, this.message, this.wikiUrl})
      : super._();
  @override
  HealthResource rebuild(void Function(HealthResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthResourceBuilder toBuilder() => HealthResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthResource &&
        id == other.id &&
        source_ == other.source_ &&
        type == other.type &&
        message == other.message &&
        wikiUrl == other.wikiUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, wikiUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthResource')
          ..add('id', id)
          ..add('source_', source_)
          ..add('type', type)
          ..add('message', message)
          ..add('wikiUrl', wikiUrl))
        .toString();
  }
}

class HealthResourceBuilder
    implements Builder<HealthResource, HealthResourceBuilder> {
  _$HealthResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  HealthCheckResult? _type;
  HealthCheckResult? get type => _$this._type;
  set type(HealthCheckResult? type) => _$this._type = type;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HttpUriBuilder? _wikiUrl;
  HttpUriBuilder get wikiUrl => _$this._wikiUrl ??= HttpUriBuilder();
  set wikiUrl(HttpUriBuilder? wikiUrl) => _$this._wikiUrl = wikiUrl;

  HealthResourceBuilder() {
    HealthResource._defaults(this);
  }

  HealthResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _source_ = $v.source_;
      _type = $v.type;
      _message = $v.message;
      _wikiUrl = $v.wikiUrl?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthResource other) {
    _$v = other as _$HealthResource;
  }

  @override
  void update(void Function(HealthResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthResource build() => _build();

  _$HealthResource _build() {
    _$HealthResource _$result;
    try {
      _$result = _$v ??
          _$HealthResource._(
            id: id,
            source_: source_,
            type: type,
            message: message,
            wikiUrl: _wikiUrl?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wikiUrl';
        _wikiUrl?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HealthResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
