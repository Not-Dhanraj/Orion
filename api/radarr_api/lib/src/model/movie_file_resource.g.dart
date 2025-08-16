// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovieFileResource extends MovieFileResource {
  @override
  final int? id;
  @override
  final int? movieId;
  @override
  final String? relativePath;
  @override
  final String? path;
  @override
  final int? size;
  @override
  final DateTime? dateAdded;
  @override
  final String? sceneName;
  @override
  final String? releaseGroup;
  @override
  final String? edition;
  @override
  final BuiltList<Language>? languages;
  @override
  final QualityModel? quality;
  @override
  final BuiltList<CustomFormatResource>? customFormats;
  @override
  final int? customFormatScore;
  @override
  final int? indexerFlags;
  @override
  final MediaInfoResource? mediaInfo;
  @override
  final String? originalFilePath;
  @override
  final bool? qualityCutoffNotMet;

  factory _$MovieFileResource(
          [void Function(MovieFileResourceBuilder)? updates]) =>
      (MovieFileResourceBuilder()..update(updates))._build();

  _$MovieFileResource._(
      {this.id,
      this.movieId,
      this.relativePath,
      this.path,
      this.size,
      this.dateAdded,
      this.sceneName,
      this.releaseGroup,
      this.edition,
      this.languages,
      this.quality,
      this.customFormats,
      this.customFormatScore,
      this.indexerFlags,
      this.mediaInfo,
      this.originalFilePath,
      this.qualityCutoffNotMet})
      : super._();
  @override
  MovieFileResource rebuild(void Function(MovieFileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieFileResourceBuilder toBuilder() =>
      MovieFileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieFileResource &&
        id == other.id &&
        movieId == other.movieId &&
        relativePath == other.relativePath &&
        path == other.path &&
        size == other.size &&
        dateAdded == other.dateAdded &&
        sceneName == other.sceneName &&
        releaseGroup == other.releaseGroup &&
        edition == other.edition &&
        languages == other.languages &&
        quality == other.quality &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore &&
        indexerFlags == other.indexerFlags &&
        mediaInfo == other.mediaInfo &&
        originalFilePath == other.originalFilePath &&
        qualityCutoffNotMet == other.qualityCutoffNotMet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, movieId.hashCode);
    _$hash = $jc(_$hash, relativePath.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, dateAdded.hashCode);
    _$hash = $jc(_$hash, sceneName.hashCode);
    _$hash = $jc(_$hash, releaseGroup.hashCode);
    _$hash = $jc(_$hash, edition.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, customFormatScore.hashCode);
    _$hash = $jc(_$hash, indexerFlags.hashCode);
    _$hash = $jc(_$hash, mediaInfo.hashCode);
    _$hash = $jc(_$hash, originalFilePath.hashCode);
    _$hash = $jc(_$hash, qualityCutoffNotMet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieFileResource')
          ..add('id', id)
          ..add('movieId', movieId)
          ..add('relativePath', relativePath)
          ..add('path', path)
          ..add('size', size)
          ..add('dateAdded', dateAdded)
          ..add('sceneName', sceneName)
          ..add('releaseGroup', releaseGroup)
          ..add('edition', edition)
          ..add('languages', languages)
          ..add('quality', quality)
          ..add('customFormats', customFormats)
          ..add('customFormatScore', customFormatScore)
          ..add('indexerFlags', indexerFlags)
          ..add('mediaInfo', mediaInfo)
          ..add('originalFilePath', originalFilePath)
          ..add('qualityCutoffNotMet', qualityCutoffNotMet))
        .toString();
  }
}

class MovieFileResourceBuilder
    implements Builder<MovieFileResource, MovieFileResourceBuilder> {
  _$MovieFileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _movieId;
  int? get movieId => _$this._movieId;
  set movieId(int? movieId) => _$this._movieId = movieId;

  String? _relativePath;
  String? get relativePath => _$this._relativePath;
  set relativePath(String? relativePath) => _$this._relativePath = relativePath;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  DateTime? _dateAdded;
  DateTime? get dateAdded => _$this._dateAdded;
  set dateAdded(DateTime? dateAdded) => _$this._dateAdded = dateAdded;

  String? _sceneName;
  String? get sceneName => _$this._sceneName;
  set sceneName(String? sceneName) => _$this._sceneName = sceneName;

  String? _releaseGroup;
  String? get releaseGroup => _$this._releaseGroup;
  set releaseGroup(String? releaseGroup) => _$this._releaseGroup = releaseGroup;

  String? _edition;
  String? get edition => _$this._edition;
  set edition(String? edition) => _$this._edition = edition;

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

  int? _indexerFlags;
  int? get indexerFlags => _$this._indexerFlags;
  set indexerFlags(int? indexerFlags) => _$this._indexerFlags = indexerFlags;

  MediaInfoResourceBuilder? _mediaInfo;
  MediaInfoResourceBuilder get mediaInfo =>
      _$this._mediaInfo ??= MediaInfoResourceBuilder();
  set mediaInfo(MediaInfoResourceBuilder? mediaInfo) =>
      _$this._mediaInfo = mediaInfo;

  String? _originalFilePath;
  String? get originalFilePath => _$this._originalFilePath;
  set originalFilePath(String? originalFilePath) =>
      _$this._originalFilePath = originalFilePath;

  bool? _qualityCutoffNotMet;
  bool? get qualityCutoffNotMet => _$this._qualityCutoffNotMet;
  set qualityCutoffNotMet(bool? qualityCutoffNotMet) =>
      _$this._qualityCutoffNotMet = qualityCutoffNotMet;

  MovieFileResourceBuilder() {
    MovieFileResource._defaults(this);
  }

  MovieFileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _movieId = $v.movieId;
      _relativePath = $v.relativePath;
      _path = $v.path;
      _size = $v.size;
      _dateAdded = $v.dateAdded;
      _sceneName = $v.sceneName;
      _releaseGroup = $v.releaseGroup;
      _edition = $v.edition;
      _languages = $v.languages?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _customFormats = $v.customFormats?.toBuilder();
      _customFormatScore = $v.customFormatScore;
      _indexerFlags = $v.indexerFlags;
      _mediaInfo = $v.mediaInfo?.toBuilder();
      _originalFilePath = $v.originalFilePath;
      _qualityCutoffNotMet = $v.qualityCutoffNotMet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieFileResource other) {
    _$v = other as _$MovieFileResource;
  }

  @override
  void update(void Function(MovieFileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieFileResource build() => _build();

  _$MovieFileResource _build() {
    _$MovieFileResource _$result;
    try {
      _$result = _$v ??
          _$MovieFileResource._(
            id: id,
            movieId: movieId,
            relativePath: relativePath,
            path: path,
            size: size,
            dateAdded: dateAdded,
            sceneName: sceneName,
            releaseGroup: releaseGroup,
            edition: edition,
            languages: _languages?.build(),
            quality: _quality?.build(),
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
            indexerFlags: indexerFlags,
            mediaInfo: _mediaInfo?.build(),
            originalFilePath: originalFilePath,
            qualityCutoffNotMet: qualityCutoffNotMet,
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

        _$failedField = 'mediaInfo';
        _mediaInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MovieFileResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
