// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_editor_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovieEditorResource extends MovieEditorResource {
  @override
  final BuiltList<int>? movieIds;
  @override
  final bool? monitored;
  @override
  final int? qualityProfileId;
  @override
  final MovieStatusType? minimumAvailability;
  @override
  final String? rootFolderPath;
  @override
  final BuiltList<int>? tags;
  @override
  final ApplyTags? applyTags;
  @override
  final bool? moveFiles;
  @override
  final bool? deleteFiles;
  @override
  final bool? addImportExclusion;

  factory _$MovieEditorResource(
          [void Function(MovieEditorResourceBuilder)? updates]) =>
      (MovieEditorResourceBuilder()..update(updates))._build();

  _$MovieEditorResource._(
      {this.movieIds,
      this.monitored,
      this.qualityProfileId,
      this.minimumAvailability,
      this.rootFolderPath,
      this.tags,
      this.applyTags,
      this.moveFiles,
      this.deleteFiles,
      this.addImportExclusion})
      : super._();
  @override
  MovieEditorResource rebuild(
          void Function(MovieEditorResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieEditorResourceBuilder toBuilder() =>
      MovieEditorResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieEditorResource &&
        movieIds == other.movieIds &&
        monitored == other.monitored &&
        qualityProfileId == other.qualityProfileId &&
        minimumAvailability == other.minimumAvailability &&
        rootFolderPath == other.rootFolderPath &&
        tags == other.tags &&
        applyTags == other.applyTags &&
        moveFiles == other.moveFiles &&
        deleteFiles == other.deleteFiles &&
        addImportExclusion == other.addImportExclusion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movieIds.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, minimumAvailability.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, applyTags.hashCode);
    _$hash = $jc(_$hash, moveFiles.hashCode);
    _$hash = $jc(_$hash, deleteFiles.hashCode);
    _$hash = $jc(_$hash, addImportExclusion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieEditorResource')
          ..add('movieIds', movieIds)
          ..add('monitored', monitored)
          ..add('qualityProfileId', qualityProfileId)
          ..add('minimumAvailability', minimumAvailability)
          ..add('rootFolderPath', rootFolderPath)
          ..add('tags', tags)
          ..add('applyTags', applyTags)
          ..add('moveFiles', moveFiles)
          ..add('deleteFiles', deleteFiles)
          ..add('addImportExclusion', addImportExclusion))
        .toString();
  }
}

class MovieEditorResourceBuilder
    implements Builder<MovieEditorResource, MovieEditorResourceBuilder> {
  _$MovieEditorResource? _$v;

  ListBuilder<int>? _movieIds;
  ListBuilder<int> get movieIds => _$this._movieIds ??= ListBuilder<int>();
  set movieIds(ListBuilder<int>? movieIds) => _$this._movieIds = movieIds;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  int? _qualityProfileId;
  int? get qualityProfileId => _$this._qualityProfileId;
  set qualityProfileId(int? qualityProfileId) =>
      _$this._qualityProfileId = qualityProfileId;

  MovieStatusType? _minimumAvailability;
  MovieStatusType? get minimumAvailability => _$this._minimumAvailability;
  set minimumAvailability(MovieStatusType? minimumAvailability) =>
      _$this._minimumAvailability = minimumAvailability;

  String? _rootFolderPath;
  String? get rootFolderPath => _$this._rootFolderPath;
  set rootFolderPath(String? rootFolderPath) =>
      _$this._rootFolderPath = rootFolderPath;

  ListBuilder<int>? _tags;
  ListBuilder<int> get tags => _$this._tags ??= ListBuilder<int>();
  set tags(ListBuilder<int>? tags) => _$this._tags = tags;

  ApplyTags? _applyTags;
  ApplyTags? get applyTags => _$this._applyTags;
  set applyTags(ApplyTags? applyTags) => _$this._applyTags = applyTags;

  bool? _moveFiles;
  bool? get moveFiles => _$this._moveFiles;
  set moveFiles(bool? moveFiles) => _$this._moveFiles = moveFiles;

  bool? _deleteFiles;
  bool? get deleteFiles => _$this._deleteFiles;
  set deleteFiles(bool? deleteFiles) => _$this._deleteFiles = deleteFiles;

  bool? _addImportExclusion;
  bool? get addImportExclusion => _$this._addImportExclusion;
  set addImportExclusion(bool? addImportExclusion) =>
      _$this._addImportExclusion = addImportExclusion;

  MovieEditorResourceBuilder() {
    MovieEditorResource._defaults(this);
  }

  MovieEditorResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movieIds = $v.movieIds?.toBuilder();
      _monitored = $v.monitored;
      _qualityProfileId = $v.qualityProfileId;
      _minimumAvailability = $v.minimumAvailability;
      _rootFolderPath = $v.rootFolderPath;
      _tags = $v.tags?.toBuilder();
      _applyTags = $v.applyTags;
      _moveFiles = $v.moveFiles;
      _deleteFiles = $v.deleteFiles;
      _addImportExclusion = $v.addImportExclusion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieEditorResource other) {
    _$v = other as _$MovieEditorResource;
  }

  @override
  void update(void Function(MovieEditorResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieEditorResource build() => _build();

  _$MovieEditorResource _build() {
    _$MovieEditorResource _$result;
    try {
      _$result = _$v ??
          _$MovieEditorResource._(
            movieIds: _movieIds?.build(),
            monitored: monitored,
            qualityProfileId: qualityProfileId,
            minimumAvailability: minimumAvailability,
            rootFolderPath: rootFolderPath,
            tags: _tags?.build(),
            applyTags: applyTags,
            moveFiles: moveFiles,
            deleteFiles: deleteFiles,
            addImportExclusion: addImportExclusion,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movieIds';
        _movieIds?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MovieEditorResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
