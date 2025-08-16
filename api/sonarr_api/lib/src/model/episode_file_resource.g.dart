// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_file_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EpisodeFileResource extends EpisodeFileResource {
  @override
  final int? id;
  @override
  final int? seriesId;
  @override
  final int? seasonNumber;
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
  final ReleaseType? releaseType;
  @override
  final MediaInfoResource? mediaInfo;
  @override
  final bool? qualityCutoffNotMet;

  factory _$EpisodeFileResource(
          [void Function(EpisodeFileResourceBuilder)? updates]) =>
      (EpisodeFileResourceBuilder()..update(updates))._build();

  _$EpisodeFileResource._(
      {this.id,
      this.seriesId,
      this.seasonNumber,
      this.relativePath,
      this.path,
      this.size,
      this.dateAdded,
      this.sceneName,
      this.releaseGroup,
      this.languages,
      this.quality,
      this.customFormats,
      this.customFormatScore,
      this.indexerFlags,
      this.releaseType,
      this.mediaInfo,
      this.qualityCutoffNotMet})
      : super._();
  @override
  EpisodeFileResource rebuild(
          void Function(EpisodeFileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeFileResourceBuilder toBuilder() =>
      EpisodeFileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EpisodeFileResource &&
        id == other.id &&
        seriesId == other.seriesId &&
        seasonNumber == other.seasonNumber &&
        relativePath == other.relativePath &&
        path == other.path &&
        size == other.size &&
        dateAdded == other.dateAdded &&
        sceneName == other.sceneName &&
        releaseGroup == other.releaseGroup &&
        languages == other.languages &&
        quality == other.quality &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore &&
        indexerFlags == other.indexerFlags &&
        releaseType == other.releaseType &&
        mediaInfo == other.mediaInfo &&
        qualityCutoffNotMet == other.qualityCutoffNotMet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, seriesId.hashCode);
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, relativePath.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, dateAdded.hashCode);
    _$hash = $jc(_$hash, sceneName.hashCode);
    _$hash = $jc(_$hash, releaseGroup.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, customFormatScore.hashCode);
    _$hash = $jc(_$hash, indexerFlags.hashCode);
    _$hash = $jc(_$hash, releaseType.hashCode);
    _$hash = $jc(_$hash, mediaInfo.hashCode);
    _$hash = $jc(_$hash, qualityCutoffNotMet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EpisodeFileResource')
          ..add('id', id)
          ..add('seriesId', seriesId)
          ..add('seasonNumber', seasonNumber)
          ..add('relativePath', relativePath)
          ..add('path', path)
          ..add('size', size)
          ..add('dateAdded', dateAdded)
          ..add('sceneName', sceneName)
          ..add('releaseGroup', releaseGroup)
          ..add('languages', languages)
          ..add('quality', quality)
          ..add('customFormats', customFormats)
          ..add('customFormatScore', customFormatScore)
          ..add('indexerFlags', indexerFlags)
          ..add('releaseType', releaseType)
          ..add('mediaInfo', mediaInfo)
          ..add('qualityCutoffNotMet', qualityCutoffNotMet))
        .toString();
  }
}

class EpisodeFileResourceBuilder
    implements Builder<EpisodeFileResource, EpisodeFileResourceBuilder> {
  _$EpisodeFileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _seriesId;
  int? get seriesId => _$this._seriesId;
  set seriesId(int? seriesId) => _$this._seriesId = seriesId;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

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

  ReleaseType? _releaseType;
  ReleaseType? get releaseType => _$this._releaseType;
  set releaseType(ReleaseType? releaseType) =>
      _$this._releaseType = releaseType;

  MediaInfoResourceBuilder? _mediaInfo;
  MediaInfoResourceBuilder get mediaInfo =>
      _$this._mediaInfo ??= MediaInfoResourceBuilder();
  set mediaInfo(MediaInfoResourceBuilder? mediaInfo) =>
      _$this._mediaInfo = mediaInfo;

  bool? _qualityCutoffNotMet;
  bool? get qualityCutoffNotMet => _$this._qualityCutoffNotMet;
  set qualityCutoffNotMet(bool? qualityCutoffNotMet) =>
      _$this._qualityCutoffNotMet = qualityCutoffNotMet;

  EpisodeFileResourceBuilder() {
    EpisodeFileResource._defaults(this);
  }

  EpisodeFileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _seriesId = $v.seriesId;
      _seasonNumber = $v.seasonNumber;
      _relativePath = $v.relativePath;
      _path = $v.path;
      _size = $v.size;
      _dateAdded = $v.dateAdded;
      _sceneName = $v.sceneName;
      _releaseGroup = $v.releaseGroup;
      _languages = $v.languages?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _customFormats = $v.customFormats?.toBuilder();
      _customFormatScore = $v.customFormatScore;
      _indexerFlags = $v.indexerFlags;
      _releaseType = $v.releaseType;
      _mediaInfo = $v.mediaInfo?.toBuilder();
      _qualityCutoffNotMet = $v.qualityCutoffNotMet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EpisodeFileResource other) {
    _$v = other as _$EpisodeFileResource;
  }

  @override
  void update(void Function(EpisodeFileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EpisodeFileResource build() => _build();

  _$EpisodeFileResource _build() {
    _$EpisodeFileResource _$result;
    try {
      _$result = _$v ??
          _$EpisodeFileResource._(
            id: id,
            seriesId: seriesId,
            seasonNumber: seasonNumber,
            relativePath: relativePath,
            path: path,
            size: size,
            dateAdded: dateAdded,
            sceneName: sceneName,
            releaseGroup: releaseGroup,
            languages: _languages?.build(),
            quality: _quality?.build(),
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
            indexerFlags: indexerFlags,
            releaseType: releaseType,
            mediaInfo: _mediaInfo?.build(),
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
            r'EpisodeFileResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
