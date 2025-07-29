// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_statistics_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesStatisticsResource extends SeriesStatisticsResource {
  @override
  final int? seasonCount;
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

  factory _$SeriesStatisticsResource(
          [void Function(SeriesStatisticsResourceBuilder)? updates]) =>
      (SeriesStatisticsResourceBuilder()..update(updates))._build();

  _$SeriesStatisticsResource._(
      {this.seasonCount,
      this.episodeFileCount,
      this.episodeCount,
      this.totalEpisodeCount,
      this.sizeOnDisk,
      this.releaseGroups,
      this.percentOfEpisodes})
      : super._();
  @override
  SeriesStatisticsResource rebuild(
          void Function(SeriesStatisticsResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesStatisticsResourceBuilder toBuilder() =>
      SeriesStatisticsResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesStatisticsResource &&
        seasonCount == other.seasonCount &&
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
    _$hash = $jc(_$hash, seasonCount.hashCode);
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
    return (newBuiltValueToStringHelper(r'SeriesStatisticsResource')
          ..add('seasonCount', seasonCount)
          ..add('episodeFileCount', episodeFileCount)
          ..add('episodeCount', episodeCount)
          ..add('totalEpisodeCount', totalEpisodeCount)
          ..add('sizeOnDisk', sizeOnDisk)
          ..add('releaseGroups', releaseGroups)
          ..add('percentOfEpisodes', percentOfEpisodes))
        .toString();
  }
}

class SeriesStatisticsResourceBuilder
    implements
        Builder<SeriesStatisticsResource, SeriesStatisticsResourceBuilder> {
  _$SeriesStatisticsResource? _$v;

  int? _seasonCount;
  int? get seasonCount => _$this._seasonCount;
  set seasonCount(int? seasonCount) => _$this._seasonCount = seasonCount;

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

  SeriesStatisticsResourceBuilder() {
    SeriesStatisticsResource._defaults(this);
  }

  SeriesStatisticsResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seasonCount = $v.seasonCount;
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
  void replace(SeriesStatisticsResource other) {
    _$v = other as _$SeriesStatisticsResource;
  }

  @override
  void update(void Function(SeriesStatisticsResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesStatisticsResource build() => _build();

  _$SeriesStatisticsResource _build() {
    _$SeriesStatisticsResource _$result;
    try {
      _$result = _$v ??
          _$SeriesStatisticsResource._(
            seasonCount: seasonCount,
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
            r'SeriesStatisticsResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
