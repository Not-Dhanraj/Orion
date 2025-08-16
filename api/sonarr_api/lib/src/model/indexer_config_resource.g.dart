// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexerConfigResource extends IndexerConfigResource {
  @override
  final int? id;
  @override
  final int? minimumAge;
  @override
  final int? retention;
  @override
  final int? maximumSize;
  @override
  final int? rssSyncInterval;

  factory _$IndexerConfigResource(
          [void Function(IndexerConfigResourceBuilder)? updates]) =>
      (IndexerConfigResourceBuilder()..update(updates))._build();

  _$IndexerConfigResource._(
      {this.id,
      this.minimumAge,
      this.retention,
      this.maximumSize,
      this.rssSyncInterval})
      : super._();
  @override
  IndexerConfigResource rebuild(
          void Function(IndexerConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexerConfigResourceBuilder toBuilder() =>
      IndexerConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexerConfigResource &&
        id == other.id &&
        minimumAge == other.minimumAge &&
        retention == other.retention &&
        maximumSize == other.maximumSize &&
        rssSyncInterval == other.rssSyncInterval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, minimumAge.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, maximumSize.hashCode);
    _$hash = $jc(_$hash, rssSyncInterval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexerConfigResource')
          ..add('id', id)
          ..add('minimumAge', minimumAge)
          ..add('retention', retention)
          ..add('maximumSize', maximumSize)
          ..add('rssSyncInterval', rssSyncInterval))
        .toString();
  }
}

class IndexerConfigResourceBuilder
    implements Builder<IndexerConfigResource, IndexerConfigResourceBuilder> {
  _$IndexerConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _minimumAge;
  int? get minimumAge => _$this._minimumAge;
  set minimumAge(int? minimumAge) => _$this._minimumAge = minimumAge;

  int? _retention;
  int? get retention => _$this._retention;
  set retention(int? retention) => _$this._retention = retention;

  int? _maximumSize;
  int? get maximumSize => _$this._maximumSize;
  set maximumSize(int? maximumSize) => _$this._maximumSize = maximumSize;

  int? _rssSyncInterval;
  int? get rssSyncInterval => _$this._rssSyncInterval;
  set rssSyncInterval(int? rssSyncInterval) =>
      _$this._rssSyncInterval = rssSyncInterval;

  IndexerConfigResourceBuilder() {
    IndexerConfigResource._defaults(this);
  }

  IndexerConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _minimumAge = $v.minimumAge;
      _retention = $v.retention;
      _maximumSize = $v.maximumSize;
      _rssSyncInterval = $v.rssSyncInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexerConfigResource other) {
    _$v = other as _$IndexerConfigResource;
  }

  @override
  void update(void Function(IndexerConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexerConfigResource build() => _build();

  _$IndexerConfigResource _build() {
    final _$result = _$v ??
        _$IndexerConfigResource._(
          id: id,
          minimumAge: minimumAge,
          retention: retention,
          maximumSize: maximumSize,
          rssSyncInterval: rssSyncInterval,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
