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
  final ParsedMovieInfo? parsedMovieInfo;
  @override
  final MovieResource? movie;
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
      this.parsedMovieInfo,
      this.movie,
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
        parsedMovieInfo == other.parsedMovieInfo &&
        movie == other.movie &&
        languages == other.languages &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, parsedMovieInfo.hashCode);
    _$hash = $jc(_$hash, movie.hashCode);
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
          ..add('parsedMovieInfo', parsedMovieInfo)
          ..add('movie', movie)
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

  ParsedMovieInfoBuilder? _parsedMovieInfo;
  ParsedMovieInfoBuilder get parsedMovieInfo =>
      _$this._parsedMovieInfo ??= ParsedMovieInfoBuilder();
  set parsedMovieInfo(ParsedMovieInfoBuilder? parsedMovieInfo) =>
      _$this._parsedMovieInfo = parsedMovieInfo;

  MovieResourceBuilder? _movie;
  MovieResourceBuilder get movie => _$this._movie ??= MovieResourceBuilder();
  set movie(MovieResourceBuilder? movie) => _$this._movie = movie;

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
      _parsedMovieInfo = $v.parsedMovieInfo?.toBuilder();
      _movie = $v.movie?.toBuilder();
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
            parsedMovieInfo: _parsedMovieInfo?.build(),
            movie: _movie?.build(),
            languages: _languages?.build(),
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parsedMovieInfo';
        _parsedMovieInfo?.build();
        _$failedField = 'movie';
        _movie?.build();
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
