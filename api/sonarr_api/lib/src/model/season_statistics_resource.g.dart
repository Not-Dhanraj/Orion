// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_statistics_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeasonStatisticsResource extends SeasonStatisticsResource {
  @override
  final DateTime? nextAiring;
  @override
  final DateTime? previousAiring;
  @override
  final int? episodeFileCount;
  @override
  final int? episodeCount;
  @override
  final int? totalEpisodeCount;
  @override
  final int? sizeOnDisk;
  @override
  final BuiltList<String>? releaseGroups;
  @override
  final double? percentOfEpisodes;

  factory _$SeasonStatisticsResource(
          [void Function(SeasonStatisticsResourceBuilder)? updates]) =>
      (SeasonStatisticsResourceBuilder()..update(updates))._build();

  _$SeasonStatisticsResource._(
      {this.nextAiring,
      this.previousAiring,
      this.episodeFileCount,
      this.episodeCount,
      this.totalEpisodeCount,
      this.sizeOnDisk,
      this.releaseGroups,
      this.percentOfEpisodes})
      : super._();
  @override
  SeasonStatisticsResource rebuild(
          void Function(SeasonStatisticsResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonStatisticsResourceBuilder toBuilder() =>
      SeasonStatisticsResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonStatisticsResource &&
        nextAiring == other.nextAiring &&
        previousAiring == other.previousAiring &&
        episodeFileCount == other.episodeFileCount &&
        episodeCount == other.episodeCount &&
        totalEpisodeCount == other.totalEpisodeCount &&
        sizeOnDisk == other.sizeOnDisk &&
        releaseGroups == other.releaseGroups &&
        percentOfEpisodes == other.percentOfEpisodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextAiring.hashCode);
    _$hash = $jc(_$hash, previousAiring.hashCode);
    _$hash = $jc(_$hash, episodeFileCount.hashCode);
    _$hash = $jc(_$hash, episodeCount.hashCode);
    _$hash = $jc(_$hash, totalEpisodeCount.hashCode);
    _$hash = $jc(_$hash, sizeOnDisk.hashCode);
    _$hash = $jc(_$hash, releaseGroups.hashCode);
    _$hash = $jc(_$hash, percentOfEpisodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeasonStatisticsResource')
          ..add('nextAiring', nextAiring)
          ..add('previousAiring', previousAiring)
          ..add('episodeFileCount', episodeFileCount)
          ..add('episodeCount', episodeCount)
          ..add('totalEpisodeCount', totalEpisodeCount)
          ..add('sizeOnDisk', sizeOnDisk)
          ..add('releaseGroups', releaseGroups)
          ..add('percentOfEpisodes', percentOfEpisodes))
        .toString();
  }
}

class SeasonStatisticsResourceBuilder
    implements
        Builder<SeasonStatisticsResource, SeasonStatisticsResourceBuilder> {
  _$SeasonStatisticsResource? _$v;

  DateTime? _nextAiring;
  DateTime? get nextAiring => _$this._nextAiring;
  set nextAiring(DateTime? nextAiring) => _$this._nextAiring = nextAiring;

  DateTime? _previousAiring;
  DateTime? get previousAiring => _$this._previousAiring;
  set previousAiring(DateTime? previousAiring) =>
      _$this._previousAiring = previousAiring;

  int? _episodeFileCount;
  int? get episodeFileCount => _$this._episodeFileCount;
  set episodeFileCount(int? episodeFileCount) =>
      _$this._episodeFileCount = episodeFileCount;

  int? _episodeCount;
  int? get episodeCount => _$this._episodeCount;
  set episodeCount(int? episodeCount) => _$this._episodeCount = episodeCount;

  int? _totalEpisodeCount;
  int? get totalEpisodeCount => _$this._totalEpisodeCount;
  set totalEpisodeCount(int? totalEpisodeCount) =>
      _$this._totalEpisodeCount = totalEpisodeCount;

  int? _sizeOnDisk;
  int? get sizeOnDisk => _$this._sizeOnDisk;
  set sizeOnDisk(int? sizeOnDisk) => _$this._sizeOnDisk = sizeOnDisk;

  ListBuilder<String>? _releaseGroups;
  ListBuilder<String> get releaseGroups =>
      _$this._releaseGroups ??= ListBuilder<String>();
  set releaseGroups(ListBuilder<String>? releaseGroups) =>
      _$this._releaseGroups = releaseGroups;

  double? _percentOfEpisodes;
  double? get percentOfEpisodes => _$this._percentOfEpisodes;
  set percentOfEpisodes(double? percentOfEpisodes) =>
      _$this._percentOfEpisodes = percentOfEpisodes;

  SeasonStatisticsResourceBuilder() {
    SeasonStatisticsResource._defaults(this);
  }

  SeasonStatisticsResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextAiring = $v.nextAiring;
      _previousAiring = $v.previousAiring;
      _episodeFileCount = $v.episodeFileCount;
      _episodeCount = $v.episodeCount;
      _totalEpisodeCount = $v.totalEpisodeCount;
      _sizeOnDisk = $v.sizeOnDisk;
      _releaseGroups = $v.releaseGroups?.toBuilder();
      _percentOfEpisodes = $v.percentOfEpisodes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonStatisticsResource other) {
    _$v = other as _$SeasonStatisticsResource;
  }

  @override
  void update(void Function(SeasonStatisticsResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeasonStatisticsResource build() => _build();

  _$SeasonStatisticsResource _build() {
    _$SeasonStatisticsResource _$result;
    try {
      _$result = _$v ??
          _$SeasonStatisticsResource._(
            nextAiring: nextAiring,
            previousAiring: previousAiring,
            episodeFileCount: episodeFileCount,
            episodeCount: episodeCount,
            totalEpisodeCount: totalEpisodeCount,
            sizeOnDisk: sizeOnDisk,
            releaseGroups: _releaseGroups?.build(),
            percentOfEpisodes: percentOfEpisodes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'releaseGroups';
        _releaseGroups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeasonStatisticsResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
