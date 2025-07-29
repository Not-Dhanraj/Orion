// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_file_list_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EpisodeFileListResource extends EpisodeFileListResource {
  @override
  final BuiltList<int>? episodeFileIds;
  @override
  final BuiltList<Language>? languages;
  @override
  final QualityModel? quality;
  @override
  final String? sceneName;
  @override
  final String? releaseGroup;

  factory _$EpisodeFileListResource(
          [void Function(EpisodeFileListResourceBuilder)? updates]) =>
      (EpisodeFileListResourceBuilder()..update(updates))._build();

  _$EpisodeFileListResource._(
      {this.episodeFileIds,
      this.languages,
      this.quality,
      this.sceneName,
      this.releaseGroup})
      : super._();
  @override
  EpisodeFileListResource rebuild(
          void Function(EpisodeFileListResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeFileListResourceBuilder toBuilder() =>
      EpisodeFileListResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EpisodeFileListResource &&
        episodeFileIds == other.episodeFileIds &&
        languages == other.languages &&
        quality == other.quality &&
        sceneName == other.sceneName &&
        releaseGroup == other.releaseGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, episodeFileIds.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, sceneName.hashCode);
    _$hash = $jc(_$hash, releaseGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EpisodeFileListResource')
          ..add('episodeFileIds', episodeFileIds)
          ..add('languages', languages)
          ..add('quality', quality)
          ..add('sceneName', sceneName)
          ..add('releaseGroup', releaseGroup))
        .toString();
  }
}

class EpisodeFileListResourceBuilder
    implements
        Builder<EpisodeFileListResource, EpisodeFileListResourceBuilder> {
  _$EpisodeFileListResource? _$v;

  ListBuilder<int>? _episodeFileIds;
  ListBuilder<int> get episodeFileIds =>
      _$this._episodeFileIds ??= ListBuilder<int>();
  set episodeFileIds(ListBuilder<int>? episodeFileIds) =>
      _$this._episodeFileIds = episodeFileIds;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  QualityModelBuilder? _quality;
  QualityModelBuilder get quality => _$this._quality ??= QualityModelBuilder();
  set quality(QualityModelBuilder? quality) => _$this._quality = quality;

  String? _sceneName;
  String? get sceneName => _$this._sceneName;
  set sceneName(String? sceneName) => _$this._sceneName = sceneName;

  String? _releaseGroup;
  String? get releaseGroup => _$this._releaseGroup;
  set releaseGroup(String? releaseGroup) => _$this._releaseGroup = releaseGroup;

  EpisodeFileListResourceBuilder() {
    EpisodeFileListResource._defaults(this);
  }

  EpisodeFileListResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _episodeFileIds = $v.episodeFileIds?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _sceneName = $v.sceneName;
      _releaseGroup = $v.releaseGroup;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EpisodeFileListResource other) {
    _$v = other as _$EpisodeFileListResource;
  }

  @override
  void update(void Function(EpisodeFileListResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EpisodeFileListResource build() => _build();

  _$EpisodeFileListResource _build() {
    _$EpisodeFileListResource _$result;
    try {
      _$result = _$v ??
          _$EpisodeFileListResource._(
            episodeFileIds: _episodeFileIds?.build(),
            languages: _languages?.build(),
            quality: _quality?.build(),
            sceneName: sceneName,
            releaseGroup: releaseGroup,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodeFileIds';
        _episodeFileIds?.build();
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'quality';
        _quality?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EpisodeFileListResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
