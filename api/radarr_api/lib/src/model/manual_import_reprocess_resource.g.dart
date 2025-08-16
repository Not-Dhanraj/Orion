// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_import_reprocess_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManualImportReprocessResource extends ManualImportReprocessResource {
  @override
  final int? id;
  @override
  final String? path;
  @override
  final int? movieId;
  @override
  final MovieResource? movie;
  @override
  final QualityModel? quality;
  @override
  final BuiltList<Language>? languages;
  @override
  final String? releaseGroup;
  @override
  final String? downloadId;
  @override
  final BuiltList<CustomFormatResource>? customFormats;
  @override
  final int? customFormatScore;
  @override
  final int? indexerFlags;
  @override
  final BuiltList<ImportRejectionResource>? rejections;

  factory _$ManualImportReprocessResource(
          [void Function(ManualImportReprocessResourceBuilder)? updates]) =>
      (ManualImportReprocessResourceBuilder()..update(updates))._build();

  _$ManualImportReprocessResource._(
      {this.id,
      this.path,
      this.movieId,
      this.movie,
      this.quality,
      this.languages,
      this.releaseGroup,
      this.downloadId,
      this.customFormats,
      this.customFormatScore,
      this.indexerFlags,
      this.rejections})
      : super._();
  @override
  ManualImportReprocessResource rebuild(
          void Function(ManualImportReprocessResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManualImportReprocessResourceBuilder toBuilder() =>
      ManualImportReprocessResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManualImportReprocessResource &&
        id == other.id &&
        path == other.path &&
        movieId == other.movieId &&
        movie == other.movie &&
        quality == other.quality &&
        languages == other.languages &&
        releaseGroup == other.releaseGroup &&
        downloadId == other.downloadId &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore &&
        indexerFlags == other.indexerFlags &&
        rejections == other.rejections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, movieId.hashCode);
    _$hash = $jc(_$hash, movie.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, releaseGroup.hashCode);
    _$hash = $jc(_$hash, downloadId.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, customFormatScore.hashCode);
    _$hash = $jc(_$hash, indexerFlags.hashCode);
    _$hash = $jc(_$hash, rejections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ManualImportReprocessResource')
          ..add('id', id)
          ..add('path', path)
          ..add('movieId', movieId)
          ..add('movie', movie)
          ..add('quality', quality)
          ..add('languages', languages)
          ..add('releaseGroup', releaseGroup)
          ..add('downloadId', downloadId)
          ..add('customFormats', customFormats)
          ..add('customFormatScore', customFormatScore)
          ..add('indexerFlags', indexerFlags)
          ..add('rejections', rejections))
        .toString();
  }
}

class ManualImportReprocessResourceBuilder
    implements
        Builder<ManualImportReprocessResource,
            ManualImportReprocessResourceBuilder> {
  _$ManualImportReprocessResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  int? _movieId;
  int? get movieId => _$this._movieId;
  set movieId(int? movieId) => _$this._movieId = movieId;

  MovieResourceBuilder? _movie;
  MovieResourceBuilder get movie => _$this._movie ??= MovieResourceBuilder();
  set movie(MovieResourceBuilder? movie) => _$this._movie = movie;

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

  String? _downloadId;
  String? get downloadId => _$this._downloadId;
  set downloadId(String? downloadId) => _$this._downloadId = downloadId;

  ListBuilder<CustomFormatResource>? _customFormats;
  ListBuilder<CustomFormatResource> get customFormats =>
      _$this._customFormats ??= ListBuilder<CustomFormatResource>();
  set customFormats(ListBuilder<CustomFormatResource>? customFormats) =>
      _$this._customFormats = customFormats;

  int? _customFormatScore;
  int? get customFormatScore => _$this._customFormatScore;
  set customFormatScore(int? customFormatScore) =>
      _$this._customFormatScore = customFormatScore;

  int? _indexerFlags;
  int? get indexerFlags => _$this._indexerFlags;
  set indexerFlags(int? indexerFlags) => _$this._indexerFlags = indexerFlags;

  ListBuilder<ImportRejectionResource>? _rejections;
  ListBuilder<ImportRejectionResource> get rejections =>
      _$this._rejections ??= ListBuilder<ImportRejectionResource>();
  set rejections(ListBuilder<ImportRejectionResource>? rejections) =>
      _$this._rejections = rejections;

  ManualImportReprocessResourceBuilder() {
    ManualImportReprocessResource._defaults(this);
  }

  ManualImportReprocessResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _movieId = $v.movieId;
      _movie = $v.movie?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _releaseGroup = $v.releaseGroup;
      _downloadId = $v.downloadId;
      _customFormats = $v.customFormats?.toBuilder();
      _customFormatScore = $v.customFormatScore;
      _indexerFlags = $v.indexerFlags;
      _rejections = $v.rejections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManualImportReprocessResource other) {
    _$v = other as _$ManualImportReprocessResource;
  }

  @override
  void update(void Function(ManualImportReprocessResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManualImportReprocessResource build() => _build();

  _$ManualImportReprocessResource _build() {
    _$ManualImportReprocessResource _$result;
    try {
      _$result = _$v ??
          _$ManualImportReprocessResource._(
            id: id,
            path: path,
            movieId: movieId,
            movie: _movie?.build(),
            quality: _quality?.build(),
            languages: _languages?.build(),
            releaseGroup: releaseGroup,
            downloadId: downloadId,
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
            indexerFlags: indexerFlags,
            rejections: _rejections?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movie';
        _movie?.build();
        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'customFormats';
        _customFormats?.build();

        _$failedField = 'rejections';
        _rejections?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ManualImportReprocessResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
