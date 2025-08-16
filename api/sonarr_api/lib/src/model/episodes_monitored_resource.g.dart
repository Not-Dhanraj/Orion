// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_monitored_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EpisodesMonitoredResource extends EpisodesMonitoredResource {
  @override
  final BuiltList<int>? episodeIds;
  @override
  final bool? monitored;

  factory _$EpisodesMonitoredResource(
          [void Function(EpisodesMonitoredResourceBuilder)? updates]) =>
      (EpisodesMonitoredResourceBuilder()..update(updates))._build();

  _$EpisodesMonitoredResource._({this.episodeIds, this.monitored}) : super._();
  @override
  EpisodesMonitoredResource rebuild(
          void Function(EpisodesMonitoredResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodesMonitoredResourceBuilder toBuilder() =>
      EpisodesMonitoredResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EpisodesMonitoredResource &&
        episodeIds == other.episodeIds &&
        monitored == other.monitored;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, episodeIds.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EpisodesMonitoredResource')
          ..add('episodeIds', episodeIds)
          ..add('monitored', monitored))
        .toString();
  }
}

class EpisodesMonitoredResourceBuilder
    implements
        Builder<EpisodesMonitoredResource, EpisodesMonitoredResourceBuilder> {
  _$EpisodesMonitoredResource? _$v;

  ListBuilder<int>? _episodeIds;
  ListBuilder<int> get episodeIds => _$this._episodeIds ??= ListBuilder<int>();
  set episodeIds(ListBuilder<int>? episodeIds) =>
      _$this._episodeIds = episodeIds;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  EpisodesMonitoredResourceBuilder() {
    EpisodesMonitoredResource._defaults(this);
  }

  EpisodesMonitoredResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _episodeIds = $v.episodeIds?.toBuilder();
      _monitored = $v.monitored;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EpisodesMonitoredResource other) {
    _$v = other as _$EpisodesMonitoredResource;
  }

  @override
  void update(void Function(EpisodesMonitoredResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EpisodesMonitoredResource build() => _build();

  _$EpisodesMonitoredResource _build() {
    _$EpisodesMonitoredResource _$result;
    try {
      _$result = _$v ??
          _$EpisodesMonitoredResource._(
            episodeIds: _episodeIds?.build(),
            monitored: monitored,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodeIds';
        _episodeIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EpisodesMonitoredResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
