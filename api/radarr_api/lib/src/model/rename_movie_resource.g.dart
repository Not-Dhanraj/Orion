// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rename_movie_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenameMovieResource extends RenameMovieResource {
  @override
  final int? id;
  @override
  final int? movieId;
  @override
  final int? movieFileId;
  @override
  final String? existingPath;
  @override
  final String? newPath;

  factory _$RenameMovieResource(
          [void Function(RenameMovieResourceBuilder)? updates]) =>
      (RenameMovieResourceBuilder()..update(updates))._build();

  _$RenameMovieResource._(
      {this.id,
      this.movieId,
      this.movieFileId,
      this.existingPath,
      this.newPath})
      : super._();
  @override
  RenameMovieResource rebuild(
          void Function(RenameMovieResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenameMovieResourceBuilder toBuilder() =>
      RenameMovieResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenameMovieResource &&
        id == other.id &&
        movieId == other.movieId &&
        movieFileId == other.movieFileId &&
        existingPath == other.existingPath &&
        newPath == other.newPath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, movieId.hashCode);
    _$hash = $jc(_$hash, movieFileId.hashCode);
    _$hash = $jc(_$hash, existingPath.hashCode);
    _$hash = $jc(_$hash, newPath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RenameMovieResource')
          ..add('id', id)
          ..add('movieId', movieId)
          ..add('movieFileId', movieFileId)
          ..add('existingPath', existingPath)
          ..add('newPath', newPath))
        .toString();
  }
}

class RenameMovieResourceBuilder
    implements Builder<RenameMovieResource, RenameMovieResourceBuilder> {
  _$RenameMovieResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _movieId;
  int? get movieId => _$this._movieId;
  set movieId(int? movieId) => _$this._movieId = movieId;

  int? _movieFileId;
  int? get movieFileId => _$this._movieFileId;
  set movieFileId(int? movieFileId) => _$this._movieFileId = movieFileId;

  String? _existingPath;
  String? get existingPath => _$this._existingPath;
  set existingPath(String? existingPath) => _$this._existingPath = existingPath;

  String? _newPath;
  String? get newPath => _$this._newPath;
  set newPath(String? newPath) => _$this._newPath = newPath;

  RenameMovieResourceBuilder() {
    RenameMovieResource._defaults(this);
  }

  RenameMovieResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _movieId = $v.movieId;
      _movieFileId = $v.movieFileId;
      _existingPath = $v.existingPath;
      _newPath = $v.newPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenameMovieResource other) {
    _$v = other as _$RenameMovieResource;
  }

  @override
  void update(void Function(RenameMovieResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RenameMovieResource build() => _build();

  _$RenameMovieResource _build() {
    final _$result = _$v ??
        _$RenameMovieResource._(
          id: id,
          movieId: movieId,
          movieFileId: movieFileId,
          existingPath: existingPath,
          newPath: newPath,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
