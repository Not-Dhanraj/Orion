// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ping_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PingResource extends PingResource {
  @override
  final String? status;

  factory _$PingResource([void Function(PingResourceBuilder)? updates]) =>
      (PingResourceBuilder()..update(updates))._build();

  _$PingResource._({this.status}) : super._();
  @override
  PingResource rebuild(void Function(PingResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PingResourceBuilder toBuilder() => PingResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PingResource && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PingResource')..add('status', status))
        .toString();
  }
}

class PingResourceBuilder
    implements Builder<PingResource, PingResourceBuilder> {
  _$PingResource? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  PingResourceBuilder() {
    PingResource._defaults(this);
  }

  PingResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PingResource other) {
    _$v = other as _$PingResource;
  }

  @override
  void update(void Function(PingResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PingResource build() => _build();

  _$PingResource _build() {
    final _$result = _$v ??
        _$PingResource._(
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
