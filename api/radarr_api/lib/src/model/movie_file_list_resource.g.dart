// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file_list_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovieFileListResource extends MovieFileListResource {
  @override
  final BuiltList<int>? movieFileIds;
  @override
  final BuiltList<Language>? languages;
  @override
  final QualityModel? quality;
  @override
  final String? edition;
  @override
  final String? releaseGroup;
  @override
  final String? sceneName;
  @override
  final int? indexerFlags;

  factory _$MovieFileListResource(
          [void Function(MovieFileListResourceBuilder)? updates]) =>
      (MovieFileListResourceBuilder()..update(updates))._build();

  _$MovieFileListResource._(
      {this.movieFileIds,
      this.languages,
      this.quality,
      this.edition,
      this.releaseGroup,
      this.sceneName,
      this.indexerFlags})
      : super._();
  @override
  MovieFileListResource rebuild(
          void Function(MovieFileListResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieFileListResourceBuilder toBuilder() =>
      MovieFileListResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieFileListResource &&
        movieFileIds == other.movieFileIds &&
        languages == other.languages &&
        quality == other.quality &&
        edition == other.edition &&
        releaseGroup == other.releaseGroup &&
        sceneName == other.sceneName &&
        indexerFlags == other.indexerFlags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movieFileIds.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, edition.hashCode);
    _$hash = $jc(_$hash, releaseGroup.hashCode);
    _$hash = $jc(_$hash, sceneName.hashCode);
    _$hash = $jc(_$hash, indexerFlags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieFileListResource')
          ..add('movieFileIds', movieFileIds)
          ..add('languages', languages)
          ..add('quality', quality)
          ..add('edition', edition)
          ..add('releaseGroup', releaseGroup)
          ..add('sceneName', sceneName)
          ..add('indexerFlags', indexerFlags))
        .toString();
  }
}

class MovieFileListResourceBuilder
    implements Builder<MovieFileListResource, MovieFileListResourceBuilder> {
  _$MovieFileListResource? _$v;

  ListBuilder<int>? _movieFileIds;
  ListBuilder<int> get movieFileIds =>
      _$this._movieFileIds ??= ListBuilder<int>();
  set movieFileIds(ListBuilder<int>? movieFileIds) =>
      _$this._movieFileIds = movieFileIds;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  QualityModelBuilder? _quality;
  QualityModelBuilder get quality => _$this._quality ??= QualityModelBuilder();
  set quality(QualityModelBuilder? quality) => _$this._quality = quality;

  String? _edition;
  String? get edition => _$this._edition;
  set edition(String? edition) => _$this._edition = edition;

  String? _releaseGroup;
  String? get releaseGroup => _$this._releaseGroup;
  set releaseGroup(String? releaseGroup) => _$this._releaseGroup = releaseGroup;

  String? _sceneName;
  String? get sceneName => _$this._sceneName;
  set sceneName(String? sceneName) => _$this._sceneName = sceneName;

  int? _indexerFlags;
  int? get indexerFlags => _$this._indexerFlags;
  set indexerFlags(int? indexerFlags) => _$this._indexerFlags = indexerFlags;

  MovieFileListResourceBuilder() {
    MovieFileListResource._defaults(this);
  }

  MovieFileListResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movieFileIds = $v.movieFileIds?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _edition = $v.edition;
      _releaseGroup = $v.releaseGroup;
      _sceneName = $v.sceneName;
      _indexerFlags = $v.indexerFlags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieFileListResource other) {
    _$v = other as _$MovieFileListResource;
  }

  @override
  void update(void Function(MovieFileListResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieFileListResource build() => _build();

  _$MovieFileListResource _build() {
    _$MovieFileListResource _$result;
    try {
      _$result = _$v ??
          _$MovieFileListResource._(
            movieFileIds: _movieFileIds?.build(),
            languages: _languages?.build(),
            quality: _quality?.build(),
            edition: edition,
            releaseGroup: releaseGroup,
            sceneName: sceneName,
            indexerFlags: indexerFlags,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movieFileIds';
        _movieFileIds?.build();
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'quality';
        _quality?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MovieFileListResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
