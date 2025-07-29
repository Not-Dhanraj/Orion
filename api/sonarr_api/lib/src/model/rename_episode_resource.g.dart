// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rename_episode_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenameEpisodeResource extends RenameEpisodeResource {
  @override
  final int? id;
  @override
  final int? seriesId;
  @override
  final int? seasonNumber;
  @override
  final BuiltList<int>? episodeNumbers;
  @override
  final int? episodeFileId;
  @override
  final String? existingPath;
  @override
  final String? newPath;

  factory _$RenameEpisodeResource(
          [void Function(RenameEpisodeResourceBuilder)? updates]) =>
      (RenameEpisodeResourceBuilder()..update(updates))._build();

  _$RenameEpisodeResource._(
      {this.id,
      this.seriesId,
      this.seasonNumber,
      this.episodeNumbers,
      this.episodeFileId,
      this.existingPath,
      this.newPath})
      : super._();
  @override
  RenameEpisodeResource rebuild(
          void Function(RenameEpisodeResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenameEpisodeResourceBuilder toBuilder() =>
      RenameEpisodeResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenameEpisodeResource &&
        id == other.id &&
        seriesId == other.seriesId &&
        seasonNumber == other.seasonNumber &&
        episodeNumbers == other.episodeNumbers &&
        episodeFileId == other.episodeFileId &&
        existingPath == other.existingPath &&
        newPath == other.newPath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, seriesId.hashCode);
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, episodeNumbers.hashCode);
    _$hash = $jc(_$hash, episodeFileId.hashCode);
    _$hash = $jc(_$hash, existingPath.hashCode);
    _$hash = $jc(_$hash, newPath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RenameEpisodeResource')
          ..add('id', id)
          ..add('seriesId', seriesId)
          ..add('seasonNumber', seasonNumber)
          ..add('episodeNumbers', episodeNumbers)
          ..add('episodeFileId', episodeFileId)
          ..add('existingPath', existingPath)
          ..add('newPath', newPath))
        .toString();
  }
}

class RenameEpisodeResourceBuilder
    implements Builder<RenameEpisodeResource, RenameEpisodeResourceBuilder> {
  _$RenameEpisodeResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _seriesId;
  int? get seriesId => _$this._seriesId;
  set seriesId(int? seriesId) => _$this._seriesId = seriesId;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  ListBuilder<int>? _episodeNumbers;
  ListBuilder<int> get episodeNumbers =>
      _$this._episodeNumbers ??= ListBuilder<int>();
  set episodeNumbers(ListBuilder<int>? episodeNumbers) =>
      _$this._episodeNumbers = episodeNumbers;

  int? _episodeFileId;
  int? get episodeFileId => _$this._episodeFileId;
  set episodeFileId(int? episodeFileId) =>
      _$this._episodeFileId = episodeFileId;

  String? _existingPath;
  String? get existingPath => _$this._existingPath;
  set existingPath(String? existingPath) => _$this._existingPath = existingPath;

  String? _newPath;
  String? get newPath => _$this._newPath;
  set newPath(String? newPath) => _$this._newPath = newPath;

  RenameEpisodeResourceBuilder() {
    RenameEpisodeResource._defaults(this);
  }

  RenameEpisodeResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _seriesId = $v.seriesId;
      _seasonNumber = $v.seasonNumber;
      _episodeNumbers = $v.episodeNumbers?.toBuilder();
      _episodeFileId = $v.episodeFileId;
      _existingPath = $v.existingPath;
      _newPath = $v.newPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenameEpisodeResource other) {
    _$v = other as _$RenameEpisodeResource;
  }

  @override
  void update(void Function(RenameEpisodeResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RenameEpisodeResource build() => _build();

  _$RenameEpisodeResource _build() {
    _$RenameEpisodeResource _$result;
    try {
      _$result = _$v ??
          _$RenameEpisodeResource._(
            id: id,
            seriesId: seriesId,
            seasonNumber: seasonNumber,
            episodeNumbers: _episodeNumbers?.build(),
            episodeFileId: episodeFileId,
            existingPath: existingPath,
            newPath: newPath,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodeNumbers';
        _episodeNumbers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RenameEpisodeResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
