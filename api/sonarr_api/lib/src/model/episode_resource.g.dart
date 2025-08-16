// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EpisodeResource extends EpisodeResource {
  @override
  final int? id;
  @override
  final int? seriesId;
  @override
  final int? tvdbId;
  @override
  final int? episodeFileId;
  @override
  final int? seasonNumber;
  @override
  final int? episodeNumber;
  @override
  final String? title;
  @override
  final String? airDate;
  @override
  final DateTime? airDateUtc;
  @override
  final DateTime? lastSearchTime;
  @override
  final int? runtime;
  @override
  final String? finaleType;
  @override
  final String? overview;
  @override
  final EpisodeFileResource? episodeFile;
  @override
  final bool? hasFile;
  @override
  final bool? monitored;
  @override
  final int? absoluteEpisodeNumber;
  @override
  final int? sceneAbsoluteEpisodeNumber;
  @override
  final int? sceneEpisodeNumber;
  @override
  final int? sceneSeasonNumber;
  @override
  final bool? unverifiedSceneNumbering;
  @override
  final DateTime? endTime;
  @override
  final DateTime? grabDate;
  @override
  final SeriesResource? series;
  @override
  final BuiltList<MediaCover>? images;

  factory _$EpisodeResource([void Function(EpisodeResourceBuilder)? updates]) =>
      (EpisodeResourceBuilder()..update(updates))._build();

  _$EpisodeResource._(
      {this.id,
      this.seriesId,
      this.tvdbId,
      this.episodeFileId,
      this.seasonNumber,
      this.episodeNumber,
      this.title,
      this.airDate,
      this.airDateUtc,
      this.lastSearchTime,
      this.runtime,
      this.finaleType,
      this.overview,
      this.episodeFile,
      this.hasFile,
      this.monitored,
      this.absoluteEpisodeNumber,
      this.sceneAbsoluteEpisodeNumber,
      this.sceneEpisodeNumber,
      this.sceneSeasonNumber,
      this.unverifiedSceneNumbering,
      this.endTime,
      this.grabDate,
      this.series,
      this.images})
      : super._();
  @override
  EpisodeResource rebuild(void Function(EpisodeResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeResourceBuilder toBuilder() => EpisodeResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EpisodeResource &&
        id == other.id &&
        seriesId == other.seriesId &&
        tvdbId == other.tvdbId &&
        episodeFileId == other.episodeFileId &&
        seasonNumber == other.seasonNumber &&
        episodeNumber == other.episodeNumber &&
        title == other.title &&
        airDate == other.airDate &&
        airDateUtc == other.airDateUtc &&
        lastSearchTime == other.lastSearchTime &&
        runtime == other.runtime &&
        finaleType == other.finaleType &&
        overview == other.overview &&
        episodeFile == other.episodeFile &&
        hasFile == other.hasFile &&
        monitored == other.monitored &&
        absoluteEpisodeNumber == other.absoluteEpisodeNumber &&
        sceneAbsoluteEpisodeNumber == other.sceneAbsoluteEpisodeNumber &&
        sceneEpisodeNumber == other.sceneEpisodeNumber &&
        sceneSeasonNumber == other.sceneSeasonNumber &&
        unverifiedSceneNumbering == other.unverifiedSceneNumbering &&
        endTime == other.endTime &&
        grabDate == other.grabDate &&
        series == other.series &&
        images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, seriesId.hashCode);
    _$hash = $jc(_$hash, tvdbId.hashCode);
    _$hash = $jc(_$hash, episodeFileId.hashCode);
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, episodeNumber.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, airDate.hashCode);
    _$hash = $jc(_$hash, airDateUtc.hashCode);
    _$hash = $jc(_$hash, lastSearchTime.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, finaleType.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, episodeFile.hashCode);
    _$hash = $jc(_$hash, hasFile.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, absoluteEpisodeNumber.hashCode);
    _$hash = $jc(_$hash, sceneAbsoluteEpisodeNumber.hashCode);
    _$hash = $jc(_$hash, sceneEpisodeNumber.hashCode);
    _$hash = $jc(_$hash, sceneSeasonNumber.hashCode);
    _$hash = $jc(_$hash, unverifiedSceneNumbering.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, grabDate.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EpisodeResource')
          ..add('id', id)
          ..add('seriesId', seriesId)
          ..add('tvdbId', tvdbId)
          ..add('episodeFileId', episodeFileId)
          ..add('seasonNumber', seasonNumber)
          ..add('episodeNumber', episodeNumber)
          ..add('title', title)
          ..add('airDate', airDate)
          ..add('airDateUtc', airDateUtc)
          ..add('lastSearchTime', lastSearchTime)
          ..add('runtime', runtime)
          ..add('finaleType', finaleType)
          ..add('overview', overview)
          ..add('episodeFile', episodeFile)
          ..add('hasFile', hasFile)
          ..add('monitored', monitored)
          ..add('absoluteEpisodeNumber', absoluteEpisodeNumber)
          ..add('sceneAbsoluteEpisodeNumber', sceneAbsoluteEpisodeNumber)
          ..add('sceneEpisodeNumber', sceneEpisodeNumber)
          ..add('sceneSeasonNumber', sceneSeasonNumber)
          ..add('unverifiedSceneNumbering', unverifiedSceneNumbering)
          ..add('endTime', endTime)
          ..add('grabDate', grabDate)
          ..add('series', series)
          ..add('images', images))
        .toString();
  }
}

class EpisodeResourceBuilder
    implements Builder<EpisodeResource, EpisodeResourceBuilder> {
  _$EpisodeResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _seriesId;
  int? get seriesId => _$this._seriesId;
  set seriesId(int? seriesId) => _$this._seriesId = seriesId;

  int? _tvdbId;
  int? get tvdbId => _$this._tvdbId;
  set tvdbId(int? tvdbId) => _$this._tvdbId = tvdbId;

  int? _episodeFileId;
  int? get episodeFileId => _$this._episodeFileId;
  set episodeFileId(int? episodeFileId) =>
      _$this._episodeFileId = episodeFileId;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  int? _episodeNumber;
  int? get episodeNumber => _$this._episodeNumber;
  set episodeNumber(int? episodeNumber) =>
      _$this._episodeNumber = episodeNumber;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _airDate;
  String? get airDate => _$this._airDate;
  set airDate(String? airDate) => _$this._airDate = airDate;

  DateTime? _airDateUtc;
  DateTime? get airDateUtc => _$this._airDateUtc;
  set airDateUtc(DateTime? airDateUtc) => _$this._airDateUtc = airDateUtc;

  DateTime? _lastSearchTime;
  DateTime? get lastSearchTime => _$this._lastSearchTime;
  set lastSearchTime(DateTime? lastSearchTime) =>
      _$this._lastSearchTime = lastSearchTime;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  String? _finaleType;
  String? get finaleType => _$this._finaleType;
  set finaleType(String? finaleType) => _$this._finaleType = finaleType;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  EpisodeFileResourceBuilder? _episodeFile;
  EpisodeFileResourceBuilder get episodeFile =>
      _$this._episodeFile ??= EpisodeFileResourceBuilder();
  set episodeFile(EpisodeFileResourceBuilder? episodeFile) =>
      _$this._episodeFile = episodeFile;

  bool? _hasFile;
  bool? get hasFile => _$this._hasFile;
  set hasFile(bool? hasFile) => _$this._hasFile = hasFile;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  int? _absoluteEpisodeNumber;
  int? get absoluteEpisodeNumber => _$this._absoluteEpisodeNumber;
  set absoluteEpisodeNumber(int? absoluteEpisodeNumber) =>
      _$this._absoluteEpisodeNumber = absoluteEpisodeNumber;

  int? _sceneAbsoluteEpisodeNumber;
  int? get sceneAbsoluteEpisodeNumber => _$this._sceneAbsoluteEpisodeNumber;
  set sceneAbsoluteEpisodeNumber(int? sceneAbsoluteEpisodeNumber) =>
      _$this._sceneAbsoluteEpisodeNumber = sceneAbsoluteEpisodeNumber;

  int? _sceneEpisodeNumber;
  int? get sceneEpisodeNumber => _$this._sceneEpisodeNumber;
  set sceneEpisodeNumber(int? sceneEpisodeNumber) =>
      _$this._sceneEpisodeNumber = sceneEpisodeNumber;

  int? _sceneSeasonNumber;
  int? get sceneSeasonNumber => _$this._sceneSeasonNumber;
  set sceneSeasonNumber(int? sceneSeasonNumber) =>
      _$this._sceneSeasonNumber = sceneSeasonNumber;

  bool? _unverifiedSceneNumbering;
  bool? get unverifiedSceneNumbering => _$this._unverifiedSceneNumbering;
  set unverifiedSceneNumbering(bool? unverifiedSceneNumbering) =>
      _$this._unverifiedSceneNumbering = unverifiedSceneNumbering;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _grabDate;
  DateTime? get grabDate => _$this._grabDate;
  set grabDate(DateTime? grabDate) => _$this._grabDate = grabDate;

  SeriesResourceBuilder? _series;
  SeriesResourceBuilder get series =>
      _$this._series ??= SeriesResourceBuilder();
  set series(SeriesResourceBuilder? series) => _$this._series = series;

  ListBuilder<MediaCover>? _images;
  ListBuilder<MediaCover> get images =>
      _$this._images ??= ListBuilder<MediaCover>();
  set images(ListBuilder<MediaCover>? images) => _$this._images = images;

  EpisodeResourceBuilder() {
    EpisodeResource._defaults(this);
  }

  EpisodeResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _seriesId = $v.seriesId;
      _tvdbId = $v.tvdbId;
      _episodeFileId = $v.episodeFileId;
      _seasonNumber = $v.seasonNumber;
      _episodeNumber = $v.episodeNumber;
      _title = $v.title;
      _airDate = $v.airDate;
      _airDateUtc = $v.airDateUtc;
      _lastSearchTime = $v.lastSearchTime;
      _runtime = $v.runtime;
      _finaleType = $v.finaleType;
      _overview = $v.overview;
      _episodeFile = $v.episodeFile?.toBuilder();
      _hasFile = $v.hasFile;
      _monitored = $v.monitored;
      _absoluteEpisodeNumber = $v.absoluteEpisodeNumber;
      _sceneAbsoluteEpisodeNumber = $v.sceneAbsoluteEpisodeNumber;
      _sceneEpisodeNumber = $v.sceneEpisodeNumber;
      _sceneSeasonNumber = $v.sceneSeasonNumber;
      _unverifiedSceneNumbering = $v.unverifiedSceneNumbering;
      _endTime = $v.endTime;
      _grabDate = $v.grabDate;
      _series = $v.series?.toBuilder();
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EpisodeResource other) {
    _$v = other as _$EpisodeResource;
  }

  @override
  void update(void Function(EpisodeResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EpisodeResource build() => _build();

  _$EpisodeResource _build() {
    _$EpisodeResource _$result;
    try {
      _$result = _$v ??
          _$EpisodeResource._(
            id: id,
            seriesId: seriesId,
            tvdbId: tvdbId,
            episodeFileId: episodeFileId,
            seasonNumber: seasonNumber,
            episodeNumber: episodeNumber,
            title: title,
            airDate: airDate,
            airDateUtc: airDateUtc,
            lastSearchTime: lastSearchTime,
            runtime: runtime,
            finaleType: finaleType,
            overview: overview,
            episodeFile: _episodeFile?.build(),
            hasFile: hasFile,
            monitored: monitored,
            absoluteEpisodeNumber: absoluteEpisodeNumber,
            sceneAbsoluteEpisodeNumber: sceneAbsoluteEpisodeNumber,
            sceneEpisodeNumber: sceneEpisodeNumber,
            sceneSeasonNumber: sceneSeasonNumber,
            unverifiedSceneNumbering: unverifiedSceneNumbering,
            endTime: endTime,
            grabDate: grabDate,
            series: _series?.build(),
            images: _images?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodeFile';
        _episodeFile?.build();

        _$failedField = 'series';
        _series?.build();
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EpisodeResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
