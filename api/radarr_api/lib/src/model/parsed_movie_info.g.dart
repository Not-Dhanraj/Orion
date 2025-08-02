// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_movie_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParsedMovieInfo extends ParsedMovieInfo {
  @override
  final BuiltList<String>? movieTitles;
  @override
  final String? originalTitle;
  @override
  final String? releaseTitle;
  @override
  final String? simpleReleaseTitle;
  @override
  final QualityModel? quality;
  @override
  final BuiltList<Language>? languages;
  @override
  final String? releaseGroup;
  @override
  final String? releaseHash;
  @override
  final String? edition;
  @override
  final int? year;
  @override
  final String? imdbId;
  @override
  final int? tmdbId;
  @override
  final String? hardcodedSubs;
  @override
  final String? movieTitle;
  @override
  final String? primaryMovieTitle;

  factory _$ParsedMovieInfo([void Function(ParsedMovieInfoBuilder)? updates]) =>
      (ParsedMovieInfoBuilder()..update(updates))._build();

  _$ParsedMovieInfo._(
      {this.movieTitles,
      this.originalTitle,
      this.releaseTitle,
      this.simpleReleaseTitle,
      this.quality,
      this.languages,
      this.releaseGroup,
      this.releaseHash,
      this.edition,
      this.year,
      this.imdbId,
      this.tmdbId,
      this.hardcodedSubs,
      this.movieTitle,
      this.primaryMovieTitle})
      : super._();
  @override
  ParsedMovieInfo rebuild(void Function(ParsedMovieInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParsedMovieInfoBuilder toBuilder() => ParsedMovieInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParsedMovieInfo &&
        movieTitles == other.movieTitles &&
        originalTitle == other.originalTitle &&
        releaseTitle == other.releaseTitle &&
        simpleReleaseTitle == other.simpleReleaseTitle &&
        quality == other.quality &&
        languages == other.languages &&
        releaseGroup == other.releaseGroup &&
        releaseHash == other.releaseHash &&
        edition == other.edition &&
        year == other.year &&
        imdbId == other.imdbId &&
        tmdbId == other.tmdbId &&
        hardcodedSubs == other.hardcodedSubs &&
        movieTitle == other.movieTitle &&
        primaryMovieTitle == other.primaryMovieTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movieTitles.hashCode);
    _$hash = $jc(_$hash, originalTitle.hashCode);
    _$hash = $jc(_$hash, releaseTitle.hashCode);
    _$hash = $jc(_$hash, simpleReleaseTitle.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, releaseGroup.hashCode);
    _$hash = $jc(_$hash, releaseHash.hashCode);
    _$hash = $jc(_$hash, edition.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, imdbId.hashCode);
    _$hash = $jc(_$hash, tmdbId.hashCode);
    _$hash = $jc(_$hash, hardcodedSubs.hashCode);
    _$hash = $jc(_$hash, movieTitle.hashCode);
    _$hash = $jc(_$hash, primaryMovieTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParsedMovieInfo')
          ..add('movieTitles', movieTitles)
          ..add('originalTitle', originalTitle)
          ..add('releaseTitle', releaseTitle)
          ..add('simpleReleaseTitle', simpleReleaseTitle)
          ..add('quality', quality)
          ..add('languages', languages)
          ..add('releaseGroup', releaseGroup)
          ..add('releaseHash', releaseHash)
          ..add('edition', edition)
          ..add('year', year)
          ..add('imdbId', imdbId)
          ..add('tmdbId', tmdbId)
          ..add('hardcodedSubs', hardcodedSubs)
          ..add('movieTitle', movieTitle)
          ..add('primaryMovieTitle', primaryMovieTitle))
        .toString();
  }
}

class ParsedMovieInfoBuilder
    implements Builder<ParsedMovieInfo, ParsedMovieInfoBuilder> {
  _$ParsedMovieInfo? _$v;

  ListBuilder<String>? _movieTitles;
  ListBuilder<String> get movieTitles =>
      _$this._movieTitles ??= ListBuilder<String>();
  set movieTitles(ListBuilder<String>? movieTitles) =>
      _$this._movieTitles = movieTitles;

  String? _originalTitle;
  String? get originalTitle => _$this._originalTitle;
  set originalTitle(String? originalTitle) =>
      _$this._originalTitle = originalTitle;

  String? _releaseTitle;
  String? get releaseTitle => _$this._releaseTitle;
  set releaseTitle(String? releaseTitle) => _$this._releaseTitle = releaseTitle;

  String? _simpleReleaseTitle;
  String? get simpleReleaseTitle => _$this._simpleReleaseTitle;
  set simpleReleaseTitle(String? simpleReleaseTitle) =>
      _$this._simpleReleaseTitle = simpleReleaseTitle;

  QualityModelBuilder? _quality;
  QualityModelBuilder get quality => _$this._quality ??= QualityModelBuilder();
  set quality(QualityModelBuilder? quality) => _$this._quality = quality;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  String? _releaseGroup;
  String? get releaseGroup => _$this._releaseGroup;
  set releaseGroup(String? releaseGroup) => _$this._releaseGroup = releaseGroup;

  String? _releaseHash;
  String? get releaseHash => _$this._releaseHash;
  set releaseHash(String? releaseHash) => _$this._releaseHash = releaseHash;

  String? _edition;
  String? get edition => _$this._edition;
  set edition(String? edition) => _$this._edition = edition;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  String? _imdbId;
  String? get imdbId => _$this._imdbId;
  set imdbId(String? imdbId) => _$this._imdbId = imdbId;

  int? _tmdbId;
  int? get tmdbId => _$this._tmdbId;
  set tmdbId(int? tmdbId) => _$this._tmdbId = tmdbId;

  String? _hardcodedSubs;
  String? get hardcodedSubs => _$this._hardcodedSubs;
  set hardcodedSubs(String? hardcodedSubs) =>
      _$this._hardcodedSubs = hardcodedSubs;

  String? _movieTitle;
  String? get movieTitle => _$this._movieTitle;
  set movieTitle(String? movieTitle) => _$this._movieTitle = movieTitle;

  String? _primaryMovieTitle;
  String? get primaryMovieTitle => _$this._primaryMovieTitle;
  set primaryMovieTitle(String? primaryMovieTitle) =>
      _$this._primaryMovieTitle = primaryMovieTitle;

  ParsedMovieInfoBuilder() {
    ParsedMovieInfo._defaults(this);
  }

  ParsedMovieInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movieTitles = $v.movieTitles?.toBuilder();
      _originalTitle = $v.originalTitle;
      _releaseTitle = $v.releaseTitle;
      _simpleReleaseTitle = $v.simpleReleaseTitle;
      _quality = $v.quality?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _releaseGroup = $v.releaseGroup;
      _releaseHash = $v.releaseHash;
      _edition = $v.edition;
      _year = $v.year;
      _imdbId = $v.imdbId;
      _tmdbId = $v.tmdbId;
      _hardcodedSubs = $v.hardcodedSubs;
      _movieTitle = $v.movieTitle;
      _primaryMovieTitle = $v.primaryMovieTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParsedMovieInfo other) {
    _$v = other as _$ParsedMovieInfo;
  }

  @override
  void update(void Function(ParsedMovieInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParsedMovieInfo build() => _build();

  _$ParsedMovieInfo _build() {
    _$ParsedMovieInfo _$result;
    try {
      _$result = _$v ??
          _$ParsedMovieInfo._(
            movieTitles: _movieTitles?.build(),
            originalTitle: originalTitle,
            releaseTitle: releaseTitle,
            simpleReleaseTitle: simpleReleaseTitle,
            quality: _quality?.build(),
            languages: _languages?.build(),
            releaseGroup: releaseGroup,
            releaseHash: releaseHash,
            edition: edition,
            year: year,
            imdbId: imdbId,
            tmdbId: tmdbId,
            hardcodedSubs: hardcodedSubs,
            movieTitle: movieTitle,
            primaryMovieTitle: primaryMovieTitle,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movieTitles';
        _movieTitles?.build();

        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ParsedMovieInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
