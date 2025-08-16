// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryResource extends HistoryResource {
  @override
  final int? id;
  @override
  final int? movieId;
  @override
  final String? sourceTitle;
  @override
  final BuiltList<Language>? languages;
  @override
  final QualityModel? quality;
  @override
  final BuiltList<CustomFormatResource>? customFormats;
  @override
  final int? customFormatScore;
  @override
  final bool? qualityCutoffNotMet;
  @override
  final DateTime? date;
  @override
  final String? downloadId;
  @override
  final MovieHistoryEventType? eventType;
  @override
  final BuiltMap<String, String?>? data;
  @override
  final MovieResource? movie;

  factory _$HistoryResource([void Function(HistoryResourceBuilder)? updates]) =>
      (HistoryResourceBuilder()..update(updates))._build();

  _$HistoryResource._(
      {this.id,
      this.movieId,
      this.sourceTitle,
      this.languages,
      this.quality,
      this.customFormats,
      this.customFormatScore,
      this.qualityCutoffNotMet,
      this.date,
      this.downloadId,
      this.eventType,
      this.data,
      this.movie})
      : super._();
  @override
  HistoryResource rebuild(void Function(HistoryResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryResourceBuilder toBuilder() => HistoryResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryResource &&
        id == other.id &&
        movieId == other.movieId &&
        sourceTitle == other.sourceTitle &&
        languages == other.languages &&
        quality == other.quality &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore &&
        qualityCutoffNotMet == other.qualityCutoffNotMet &&
        date == other.date &&
        downloadId == other.downloadId &&
        eventType == other.eventType &&
        data == other.data &&
        movie == other.movie;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, movieId.hashCode);
    _$hash = $jc(_$hash, sourceTitle.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, customFormatScore.hashCode);
    _$hash = $jc(_$hash, qualityCutoffNotMet.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, downloadId.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, movie.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryResource')
          ..add('id', id)
          ..add('movieId', movieId)
          ..add('sourceTitle', sourceTitle)
          ..add('languages', languages)
          ..add('quality', quality)
          ..add('customFormats', customFormats)
          ..add('customFormatScore', customFormatScore)
          ..add('qualityCutoffNotMet', qualityCutoffNotMet)
          ..add('date', date)
          ..add('downloadId', downloadId)
          ..add('eventType', eventType)
          ..add('data', data)
          ..add('movie', movie))
        .toString();
  }
}

class HistoryResourceBuilder
    implements Builder<HistoryResource, HistoryResourceBuilder> {
  _$HistoryResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _movieId;
  int? get movieId => _$this._movieId;
  set movieId(int? movieId) => _$this._movieId = movieId;

  String? _sourceTitle;
  String? get sourceTitle => _$this._sourceTitle;
  set sourceTitle(String? sourceTitle) => _$this._sourceTitle = sourceTitle;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  QualityModelBuilder? _quality;
  QualityModelBuilder get quality => _$this._quality ??= QualityModelBuilder();
  set quality(QualityModelBuilder? quality) => _$this._quality = quality;

  ListBuilder<CustomFormatResource>? _customFormats;
  ListBuilder<CustomFormatResource> get customFormats =>
      _$this._customFormats ??= ListBuilder<CustomFormatResource>();
  set customFormats(ListBuilder<CustomFormatResource>? customFormats) =>
      _$this._customFormats = customFormats;

  int? _customFormatScore;
  int? get customFormatScore => _$this._customFormatScore;
  set customFormatScore(int? customFormatScore) =>
      _$this._customFormatScore = customFormatScore;

  bool? _qualityCutoffNotMet;
  bool? get qualityCutoffNotMet => _$this._qualityCutoffNotMet;
  set qualityCutoffNotMet(bool? qualityCutoffNotMet) =>
      _$this._qualityCutoffNotMet = qualityCutoffNotMet;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _downloadId;
  String? get downloadId => _$this._downloadId;
  set downloadId(String? downloadId) => _$this._downloadId = downloadId;

  MovieHistoryEventType? _eventType;
  MovieHistoryEventType? get eventType => _$this._eventType;
  set eventType(MovieHistoryEventType? eventType) =>
      _$this._eventType = eventType;

  MapBuilder<String, String?>? _data;
  MapBuilder<String, String?> get data =>
      _$this._data ??= MapBuilder<String, String?>();
  set data(MapBuilder<String, String?>? data) => _$this._data = data;

  MovieResourceBuilder? _movie;
  MovieResourceBuilder get movie => _$this._movie ??= MovieResourceBuilder();
  set movie(MovieResourceBuilder? movie) => _$this._movie = movie;

  HistoryResourceBuilder() {
    HistoryResource._defaults(this);
  }

  HistoryResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _movieId = $v.movieId;
      _sourceTitle = $v.sourceTitle;
      _languages = $v.languages?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _customFormats = $v.customFormats?.toBuilder();
      _customFormatScore = $v.customFormatScore;
      _qualityCutoffNotMet = $v.qualityCutoffNotMet;
      _date = $v.date;
      _downloadId = $v.downloadId;
      _eventType = $v.eventType;
      _data = $v.data?.toBuilder();
      _movie = $v.movie?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryResource other) {
    _$v = other as _$HistoryResource;
  }

  @override
  void update(void Function(HistoryResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryResource build() => _build();

  _$HistoryResource _build() {
    _$HistoryResource _$result;
    try {
      _$result = _$v ??
          _$HistoryResource._(
            id: id,
            movieId: movieId,
            sourceTitle: sourceTitle,
            languages: _languages?.build(),
            quality: _quality?.build(),
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
            qualityCutoffNotMet: qualityCutoffNotMet,
            date: date,
            downloadId: downloadId,
            eventType: eventType,
            data: _data?.build(),
            movie: _movie?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'customFormats';
        _customFormats?.build();

        _$failedField = 'data';
        _data?.build();
        _$failedField = 'movie';
        _movie?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HistoryResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
