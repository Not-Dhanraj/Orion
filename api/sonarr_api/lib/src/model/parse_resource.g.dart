// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parse_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParseResource extends ParseResource {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final ParsedEpisodeInfo? parsedEpisodeInfo;
  @override
  final SeriesResource? series;
  @override
  final BuiltList<EpisodeResource>? episodes;
  @override
  final BuiltList<Language>? languages;
  @override
  final BuiltList<CustomFormatResource>? customFormats;
  @override
  final int? customFormatScore;

  factory _$ParseResource([void Function(ParseResourceBuilder)? updates]) =>
      (ParseResourceBuilder()..update(updates))._build();

  _$ParseResource._(
      {this.id,
      this.title,
      this.parsedEpisodeInfo,
      this.series,
      this.episodes,
      this.languages,
      this.customFormats,
      this.customFormatScore})
      : super._();
  @override
  ParseResource rebuild(void Function(ParseResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParseResourceBuilder toBuilder() => ParseResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParseResource &&
        id == other.id &&
        title == other.title &&
        parsedEpisodeInfo == other.parsedEpisodeInfo &&
        series == other.series &&
        episodes == other.episodes &&
        languages == other.languages &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, parsedEpisodeInfo.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, customFormatScore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParseResource')
          ..add('id', id)
          ..add('title', title)
          ..add('parsedEpisodeInfo', parsedEpisodeInfo)
          ..add('series', series)
          ..add('episodes', episodes)
          ..add('languages', languages)
          ..add('customFormats', customFormats)
          ..add('customFormatScore', customFormatScore))
        .toString();
  }
}

class ParseResourceBuilder
    implements Builder<ParseResource, ParseResourceBuilder> {
  _$ParseResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ParsedEpisodeInfoBuilder? _parsedEpisodeInfo;
  ParsedEpisodeInfoBuilder get parsedEpisodeInfo =>
      _$this._parsedEpisodeInfo ??= ParsedEpisodeInfoBuilder();
  set parsedEpisodeInfo(ParsedEpisodeInfoBuilder? parsedEpisodeInfo) =>
      _$this._parsedEpisodeInfo = parsedEpisodeInfo;

  SeriesResourceBuilder? _series;
  SeriesResourceBuilder get series =>
      _$this._series ??= SeriesResourceBuilder();
  set series(SeriesResourceBuilder? series) => _$this._series = series;

  ListBuilder<EpisodeResource>? _episodes;
  ListBuilder<EpisodeResource> get episodes =>
      _$this._episodes ??= ListBuilder<EpisodeResource>();
  set episodes(ListBuilder<EpisodeResource>? episodes) =>
      _$this._episodes = episodes;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  ListBuilder<CustomFormatResource>? _customFormats;
  ListBuilder<CustomFormatResource> get customFormats =>
      _$this._customFormats ??= ListBuilder<CustomFormatResource>();
  set customFormats(ListBuilder<CustomFormatResource>? customFormats) =>
      _$this._customFormats = customFormats;

  int? _customFormatScore;
  int? get customFormatScore => _$this._customFormatScore;
  set customFormatScore(int? customFormatScore) =>
      _$this._customFormatScore = customFormatScore;

  ParseResourceBuilder() {
    ParseResource._defaults(this);
  }

  ParseResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _parsedEpisodeInfo = $v.parsedEpisodeInfo?.toBuilder();
      _series = $v.series?.toBuilder();
      _episodes = $v.episodes?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _customFormats = $v.customFormats?.toBuilder();
      _customFormatScore = $v.customFormatScore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParseResource other) {
    _$v = other as _$ParseResource;
  }

  @override
  void update(void Function(ParseResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParseResource build() => _build();

  _$ParseResource _build() {
    _$ParseResource _$result;
    try {
      _$result = _$v ??
          _$ParseResource._(
            id: id,
            title: title,
            parsedEpisodeInfo: _parsedEpisodeInfo?.build(),
            series: _series?.build(),
            episodes: _episodes?.build(),
            languages: _languages?.build(),
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parsedEpisodeInfo';
        _parsedEpisodeInfo?.build();
        _$failedField = 'series';
        _series?.build();
        _$failedField = 'episodes';
        _episodes?.build();
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'customFormats';
        _customFormats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ParseResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
