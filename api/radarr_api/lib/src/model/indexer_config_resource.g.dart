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
  final int? maximumSize;
  @override
  final int? retention;
  @override
  final int? rssSyncInterval;
  @override
  final bool? preferIndexerFlags;
  @override
  final int? availabilityDelay;
  @override
  final bool? allowHardcodedSubs;
  @override
  final String? whitelistedHardcodedSubs;

  factory _$IndexerConfigResource(
          [void Function(IndexerConfigResourceBuilder)? updates]) =>
      (IndexerConfigResourceBuilder()..update(updates))._build();

  _$IndexerConfigResource._(
      {this.id,
      this.minimumAge,
      this.maximumSize,
      this.retention,
      this.rssSyncInterval,
      this.preferIndexerFlags,
      this.availabilityDelay,
      this.allowHardcodedSubs,
      this.whitelistedHardcodedSubs})
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
        maximumSize == other.maximumSize &&
        retention == other.retention &&
        rssSyncInterval == other.rssSyncInterval &&
        preferIndexerFlags == other.preferIndexerFlags &&
        availabilityDelay == other.availabilityDelay &&
        allowHardcodedSubs == other.allowHardcodedSubs &&
        whitelistedHardcodedSubs == other.whitelistedHardcodedSubs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, minimumAge.hashCode);
    _$hash = $jc(_$hash, maximumSize.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, rssSyncInterval.hashCode);
    _$hash = $jc(_$hash, preferIndexerFlags.hashCode);
    _$hash = $jc(_$hash, availabilityDelay.hashCode);
    _$hash = $jc(_$hash, allowHardcodedSubs.hashCode);
    _$hash = $jc(_$hash, whitelistedHardcodedSubs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexerConfigResource')
          ..add('id', id)
          ..add('minimumAge', minimumAge)
          ..add('maximumSize', maximumSize)
          ..add('retention', retention)
          ..add('rssSyncInterval', rssSyncInterval)
          ..add('preferIndexerFlags', preferIndexerFlags)
          ..add('availabilityDelay', availabilityDelay)
          ..add('allowHardcodedSubs', allowHardcodedSubs)
          ..add('whitelistedHardcodedSubs', whitelistedHardcodedSubs))
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

  int? _maximumSize;
  int? get maximumSize => _$this._maximumSize;
  set maximumSize(int? maximumSize) => _$this._maximumSize = maximumSize;

  int? _retention;
  int? get retention => _$this._retention;
  set retention(int? retention) => _$this._retention = retention;

  int? _rssSyncInterval;
  int? get rssSyncInterval => _$this._rssSyncInterval;
  set rssSyncInterval(int? rssSyncInterval) =>
      _$this._rssSyncInterval = rssSyncInterval;

  bool? _preferIndexerFlags;
  bool? get preferIndexerFlags => _$this._preferIndexerFlags;
  set preferIndexerFlags(bool? preferIndexerFlags) =>
      _$this._preferIndexerFlags = preferIndexerFlags;

  int? _availabilityDelay;
  int? get availabilityDelay => _$this._availabilityDelay;
  set availabilityDelay(int? availabilityDelay) =>
      _$this._availabilityDelay = availabilityDelay;

  bool? _allowHardcodedSubs;
  bool? get allowHardcodedSubs => _$this._allowHardcodedSubs;
  set allowHardcodedSubs(bool? allowHardcodedSubs) =>
      _$this._allowHardcodedSubs = allowHardcodedSubs;

  String? _whitelistedHardcodedSubs;
  String? get whitelistedHardcodedSubs => _$this._whitelistedHardcodedSubs;
  set whitelistedHardcodedSubs(String? whitelistedHardcodedSubs) =>
      _$this._whitelistedHardcodedSubs = whitelistedHardcodedSubs;

  IndexerConfigResourceBuilder() {
    IndexerConfigResource._defaults(this);
  }

  IndexerConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _minimumAge = $v.minimumAge;
      _maximumSize = $v.maximumSize;
      _retention = $v.retention;
      _rssSyncInterval = $v.rssSyncInterval;
      _preferIndexerFlags = $v.preferIndexerFlags;
      _availabilityDelay = $v.availabilityDelay;
      _allowHardcodedSubs = $v.allowHardcodedSubs;
      _whitelistedHardcodedSubs = $v.whitelistedHardcodedSubs;
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
          maximumSize: maximumSize,
          retention: retention,
          rssSyncInterval: rssSyncInterval,
          preferIndexerFlags: preferIndexerFlags,
          availabilityDelay: availabilityDelay,
          allowHardcodedSubs: allowHardcodedSubs,
          whitelistedHardcodedSubs: whitelistedHardcodedSubs,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
