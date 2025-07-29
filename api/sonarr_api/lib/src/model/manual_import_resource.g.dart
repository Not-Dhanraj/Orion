// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_import_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManualImportResource extends ManualImportResource {
  @override
  final int? id;
  @override
  final String? path;
  @override
  final String? relativePath;
  @override
  final String? folderName;
  @override
  final String? name;
  @override
  final int? size;
  @override
  final SeriesResource? series;
  @override
  final int? seasonNumber;
  @override
  final BuiltList<EpisodeResource>? episodes;
  @override
  final int? episodeFileId;
  @override
  final String? releaseGroup;
  @override
  final QualityModel? quality;
  @override
  final BuiltList<Language>? languages;
  @override
  final int? qualityWeight;
  @override
  final String? downloadId;
  @override
  final BuiltList<CustomFormatResource>? customFormats;
  @override
  final int? customFormatScore;
  @override
  final int? indexerFlags;
  @override
  final ReleaseType? releaseType;
  @override
  final BuiltList<ImportRejectionResource>? rejections;

  factory _$ManualImportResource(
          [void Function(ManualImportResourceBuilder)? updates]) =>
      (ManualImportResourceBuilder()..update(updates))._build();

  _$ManualImportResource._(
      {this.id,
      this.path,
      this.relativePath,
      this.folderName,
      this.name,
      this.size,
      this.series,
      this.seasonNumber,
      this.episodes,
      this.episodeFileId,
      this.releaseGroup,
      this.quality,
      this.languages,
      this.qualityWeight,
      this.downloadId,
      this.customFormats,
      this.customFormatScore,
      this.indexerFlags,
      this.releaseType,
      this.rejections})
      : super._();
  @override
  ManualImportResource rebuild(
          void Function(ManualImportResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManualImportResourceBuilder toBuilder() =>
      ManualImportResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManualImportResource &&
        id == other.id &&
        path == other.path &&
        relativePath == other.relativePath &&
        folderName == other.folderName &&
        name == other.name &&
        size == other.size &&
        series == other.series &&
        seasonNumber == other.seasonNumber &&
        episodes == other.episodes &&
        episodeFileId == other.episodeFileId &&
        releaseGroup == other.releaseGroup &&
        quality == other.quality &&
        languages == other.languages &&
        qualityWeight == other.qualityWeight &&
        downloadId == other.downloadId &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore &&
        indexerFlags == other.indexerFlags &&
        releaseType == other.releaseType &&
        rejections == other.rejections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, relativePath.hashCode);
    _$hash = $jc(_$hash, folderName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, episodeFileId.hashCode);
    _$hash = $jc(_$hash, releaseGroup.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, qualityWeight.hashCode);
    _$hash = $jc(_$hash, downloadId.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, customFormatScore.hashCode);
    _$hash = $jc(_$hash, indexerFlags.hashCode);
    _$hash = $jc(_$hash, releaseType.hashCode);
    _$hash = $jc(_$hash, rejections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ManualImportResource')
          ..add('id', id)
          ..add('path', path)
          ..add('relativePath', relativePath)
          ..add('folderName', folderName)
          ..add('name', name)
          ..add('size', size)
          ..add('series', series)
          ..add('seasonNumber', seasonNumber)
          ..add('episodes', episodes)
          ..add('episodeFileId', episodeFileId)
          ..add('releaseGroup', releaseGroup)
          ..add('quality', quality)
          ..add('languages', languages)
          ..add('qualityWeight', qualityWeight)
          ..add('downloadId', downloadId)
          ..add('customFormats', customFormats)
          ..add('customFormatScore', customFormatScore)
          ..add('indexerFlags', indexerFlags)
          ..add('releaseType', releaseType)
          ..add('rejections', rejections))
        .toString();
  }
}

class ManualImportResourceBuilder
    implements Builder<ManualImportResource, ManualImportResourceBuilder> {
  _$ManualImportResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _relativePath;
  String? get relativePath => _$this._relativePath;
  set relativePath(String? relativePath) => _$this._relativePath = relativePath;

  String? _folderName;
  String? get folderName => _$this._folderName;
  set folderName(String? folderName) => _$this._folderName = folderName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  SeriesResourceBuilder? _series;
  SeriesResourceBuilder get series =>
      _$this._series ??= SeriesResourceBuilder();
  set series(SeriesResourceBuilder? series) => _$this._series = series;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  ListBuilder<EpisodeResource>? _episodes;
  ListBuilder<EpisodeResource> get episodes =>
      _$this._episodes ??= ListBuilder<EpisodeResource>();
  set episodes(ListBuilder<EpisodeResource>? episodes) =>
      _$this._episodes = episodes;

  int? _episodeFileId;
  int? get episodeFileId => _$this._episodeFileId;
  set episodeFileId(int? episodeFileId) =>
      _$this._episodeFileId = episodeFileId;

  String? _releaseGroup;
  String? get releaseGroup => _$this._releaseGroup;
  set releaseGroup(String? releaseGroup) => _$this._releaseGroup = releaseGroup;

  QualityModelBuilder? _quality;
  QualityModelBuilder get quality => _$this._quality ??= QualityModelBuilder();
  set quality(QualityModelBuilder? quality) => _$this._quality = quality;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  int? _qualityWeight;
  int? get qualityWeight => _$this._qualityWeight;
  set qualityWeight(int? qualityWeight) =>
      _$this._qualityWeight = qualityWeight;

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

  ReleaseType? _releaseType;
  ReleaseType? get releaseType => _$this._releaseType;
  set releaseType(ReleaseType? releaseType) =>
      _$this._releaseType = releaseType;

  ListBuilder<ImportRejectionResource>? _rejections;
  ListBuilder<ImportRejectionResource> get rejections =>
      _$this._rejections ??= ListBuilder<ImportRejectionResource>();
  set rejections(ListBuilder<ImportRejectionResource>? rejections) =>
      _$this._rejections = rejections;

  ManualImportResourceBuilder() {
    ManualImportResource._defaults(this);
  }

  ManualImportResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _relativePath = $v.relativePath;
      _folderName = $v.folderName;
      _name = $v.name;
      _size = $v.size;
      _series = $v.series?.toBuilder();
      _seasonNumber = $v.seasonNumber;
      _episodes = $v.episodes?.toBuilder();
      _episodeFileId = $v.episodeFileId;
      _releaseGroup = $v.releaseGroup;
      _quality = $v.quality?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _qualityWeight = $v.qualityWeight;
      _downloadId = $v.downloadId;
      _customFormats = $v.customFormats?.toBuilder();
      _customFormatScore = $v.customFormatScore;
      _indexerFlags = $v.indexerFlags;
      _releaseType = $v.releaseType;
      _rejections = $v.rejections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManualImportResource other) {
    _$v = other as _$ManualImportResource;
  }

  @override
  void update(void Function(ManualImportResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManualImportResource build() => _build();

  _$ManualImportResource _build() {
    _$ManualImportResource _$result;
    try {
      _$result = _$v ??
          _$ManualImportResource._(
            id: id,
            path: path,
            relativePath: relativePath,
            folderName: folderName,
            name: name,
            size: size,
            series: _series?.build(),
            seasonNumber: seasonNumber,
            episodes: _episodes?.build(),
            episodeFileId: episodeFileId,
            releaseGroup: releaseGroup,
            quality: _quality?.build(),
            languages: _languages?.build(),
            qualityWeight: qualityWeight,
            downloadId: downloadId,
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
            indexerFlags: indexerFlags,
            releaseType: releaseType,
            rejections: _rejections?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        _series?.build();

        _$failedField = 'episodes';
        _episodes?.build();

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
            r'ManualImportResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
