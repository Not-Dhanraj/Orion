// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delay_profile_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DelayProfileResource extends DelayProfileResource {
  @override
  final int? id;
  @override
  final bool? enableUsenet;
  @override
  final bool? enableTorrent;
  @override
  final DownloadProtocol? preferredProtocol;
  @override
  final int? usenetDelay;
  @override
  final int? torrentDelay;
  @override
  final bool? bypassIfHighestQuality;
  @override
  final bool? bypassIfAboveCustomFormatScore;
  @override
  final int? minimumCustomFormatScore;
  @override
  final int? order;
  @override
  final BuiltSet<int>? tags;

  factory _$DelayProfileResource(
          [void Function(DelayProfileResourceBuilder)? updates]) =>
      (DelayProfileResourceBuilder()..update(updates))._build();

  _$DelayProfileResource._(
      {this.id,
      this.enableUsenet,
      this.enableTorrent,
      this.preferredProtocol,
      this.usenetDelay,
      this.torrentDelay,
      this.bypassIfHighestQuality,
      this.bypassIfAboveCustomFormatScore,
      this.minimumCustomFormatScore,
      this.order,
      this.tags})
      : super._();
  @override
  DelayProfileResource rebuild(
          void Function(DelayProfileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DelayProfileResourceBuilder toBuilder() =>
      DelayProfileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DelayProfileResource &&
        id == other.id &&
        enableUsenet == other.enableUsenet &&
        enableTorrent == other.enableTorrent &&
        preferredProtocol == other.preferredProtocol &&
        usenetDelay == other.usenetDelay &&
        torrentDelay == other.torrentDelay &&
        bypassIfHighestQuality == other.bypassIfHighestQuality &&
        bypassIfAboveCustomFormatScore ==
            other.bypassIfAboveCustomFormatScore &&
        minimumCustomFormatScore == other.minimumCustomFormatScore &&
        order == other.order &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, enableUsenet.hashCode);
    _$hash = $jc(_$hash, enableTorrent.hashCode);
    _$hash = $jc(_$hash, preferredProtocol.hashCode);
    _$hash = $jc(_$hash, usenetDelay.hashCode);
    _$hash = $jc(_$hash, torrentDelay.hashCode);
    _$hash = $jc(_$hash, bypassIfHighestQuality.hashCode);
    _$hash = $jc(_$hash, bypassIfAboveCustomFormatScore.hashCode);
    _$hash = $jc(_$hash, minimumCustomFormatScore.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DelayProfileResource')
          ..add('id', id)
          ..add('enableUsenet', enableUsenet)
          ..add('enableTorrent', enableTorrent)
          ..add('preferredProtocol', preferredProtocol)
          ..add('usenetDelay', usenetDelay)
          ..add('torrentDelay', torrentDelay)
          ..add('bypassIfHighestQuality', bypassIfHighestQuality)
          ..add(
              'bypassIfAboveCustomFormatScore', bypassIfAboveCustomFormatScore)
          ..add('minimumCustomFormatScore', minimumCustomFormatScore)
          ..add('order', order)
          ..add('tags', tags))
        .toString();
  }
}

class DelayProfileResourceBuilder
    implements Builder<DelayProfileResource, DelayProfileResourceBuilder> {
  _$DelayProfileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _enableUsenet;
  bool? get enableUsenet => _$this._enableUsenet;
  set enableUsenet(bool? enableUsenet) => _$this._enableUsenet = enableUsenet;

  bool? _enableTorrent;
  bool? get enableTorrent => _$this._enableTorrent;
  set enableTorrent(bool? enableTorrent) =>
      _$this._enableTorrent = enableTorrent;

  DownloadProtocol? _preferredProtocol;
  DownloadProtocol? get preferredProtocol => _$this._preferredProtocol;
  set preferredProtocol(DownloadProtocol? preferredProtocol) =>
      _$this._preferredProtocol = preferredProtocol;

  int? _usenetDelay;
  int? get usenetDelay => _$this._usenetDelay;
  set usenetDelay(int? usenetDelay) => _$this._usenetDelay = usenetDelay;

  int? _torrentDelay;
  int? get torrentDelay => _$this._torrentDelay;
  set torrentDelay(int? torrentDelay) => _$this._torrentDelay = torrentDelay;

  bool? _bypassIfHighestQuality;
  bool? get bypassIfHighestQuality => _$this._bypassIfHighestQuality;
  set bypassIfHighestQuality(bool? bypassIfHighestQuality) =>
      _$this._bypassIfHighestQuality = bypassIfHighestQuality;

  bool? _bypassIfAboveCustomFormatScore;
  bool? get bypassIfAboveCustomFormatScore =>
      _$this._bypassIfAboveCustomFormatScore;
  set bypassIfAboveCustomFormatScore(bool? bypassIfAboveCustomFormatScore) =>
      _$this._bypassIfAboveCustomFormatScore = bypassIfAboveCustomFormatScore;

  int? _minimumCustomFormatScore;
  int? get minimumCustomFormatScore => _$this._minimumCustomFormatScore;
  set minimumCustomFormatScore(int? minimumCustomFormatScore) =>
      _$this._minimumCustomFormatScore = minimumCustomFormatScore;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  SetBuilder<int>? _tags;
  SetBuilder<int> get tags => _$this._tags ??= SetBuilder<int>();
  set tags(SetBuilder<int>? tags) => _$this._tags = tags;

  DelayProfileResourceBuilder() {
    DelayProfileResource._defaults(this);
  }

  DelayProfileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _enableUsenet = $v.enableUsenet;
      _enableTorrent = $v.enableTorrent;
      _preferredProtocol = $v.preferredProtocol;
      _usenetDelay = $v.usenetDelay;
      _torrentDelay = $v.torrentDelay;
      _bypassIfHighestQuality = $v.bypassIfHighestQuality;
      _bypassIfAboveCustomFormatScore = $v.bypassIfAboveCustomFormatScore;
      _minimumCustomFormatScore = $v.minimumCustomFormatScore;
      _order = $v.order;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DelayProfileResource other) {
    _$v = other as _$DelayProfileResource;
  }

  @override
  void update(void Function(DelayProfileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DelayProfileResource build() => _build();

  _$DelayProfileResource _build() {
    _$DelayProfileResource _$result;
    try {
      _$result = _$v ??
          _$DelayProfileResource._(
            id: id,
            enableUsenet: enableUsenet,
            enableTorrent: enableTorrent,
            preferredProtocol: preferredProtocol,
            usenetDelay: usenetDelay,
            torrentDelay: torrentDelay,
            bypassIfHighestQuality: bypassIfHighestQuality,
            bypassIfAboveCustomFormatScore: bypassIfAboveCustomFormatScore,
            minimumCustomFormatScore: minimumCustomFormatScore,
            order: order,
            tags: _tags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DelayProfileResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
