// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_movie_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddMovieOptions extends AddMovieOptions {
  @override
  final bool? ignoreEpisodesWithFiles;
  @override
  final bool? ignoreEpisodesWithoutFiles;
  @override
  final MonitorTypes? monitor;
  @override
  final bool? searchForMovie;
  @override
  final AddMovieMethod? addMethod;

  factory _$AddMovieOptions([void Function(AddMovieOptionsBuilder)? updates]) =>
      (AddMovieOptionsBuilder()..update(updates))._build();

  _$AddMovieOptions._(
      {this.ignoreEpisodesWithFiles,
      this.ignoreEpisodesWithoutFiles,
      this.monitor,
      this.searchForMovie,
      this.addMethod})
      : super._();
  @override
  AddMovieOptions rebuild(void Function(AddMovieOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddMovieOptionsBuilder toBuilder() => AddMovieOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddMovieOptions &&
        ignoreEpisodesWithFiles == other.ignoreEpisodesWithFiles &&
        ignoreEpisodesWithoutFiles == other.ignoreEpisodesWithoutFiles &&
        monitor == other.monitor &&
        searchForMovie == other.searchForMovie &&
        addMethod == other.addMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ignoreEpisodesWithFiles.hashCode);
    _$hash = $jc(_$hash, ignoreEpisodesWithoutFiles.hashCode);
    _$hash = $jc(_$hash, monitor.hashCode);
    _$hash = $jc(_$hash, searchForMovie.hashCode);
    _$hash = $jc(_$hash, addMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddMovieOptions')
          ..add('ignoreEpisodesWithFiles', ignoreEpisodesWithFiles)
          ..add('ignoreEpisodesWithoutFiles', ignoreEpisodesWithoutFiles)
          ..add('monitor', monitor)
          ..add('searchForMovie', searchForMovie)
          ..add('addMethod', addMethod))
        .toString();
  }
}

class AddMovieOptionsBuilder
    implements Builder<AddMovieOptions, AddMovieOptionsBuilder> {
  _$AddMovieOptions? _$v;

  bool? _ignoreEpisodesWithFiles;
  bool? get ignoreEpisodesWithFiles => _$this._ignoreEpisodesWithFiles;
  set ignoreEpisodesWithFiles(bool? ignoreEpisodesWithFiles) =>
      _$this._ignoreEpisodesWithFiles = ignoreEpisodesWithFiles;

  bool? _ignoreEpisodesWithoutFiles;
  bool? get ignoreEpisodesWithoutFiles => _$this._ignoreEpisodesWithoutFiles;
  set ignoreEpisodesWithoutFiles(bool? ignoreEpisodesWithoutFiles) =>
      _$this._ignoreEpisodesWithoutFiles = ignoreEpisodesWithoutFiles;

  MonitorTypes? _monitor;
  MonitorTypes? get monitor => _$this._monitor;
  set monitor(MonitorTypes? monitor) => _$this._monitor = monitor;

  bool? _searchForMovie;
  bool? get searchForMovie => _$this._searchForMovie;
  set searchForMovie(bool? searchForMovie) =>
      _$this._searchForMovie = searchForMovie;

  AddMovieMethod? _addMethod;
  AddMovieMethod? get addMethod => _$this._addMethod;
  set addMethod(AddMovieMethod? addMethod) => _$this._addMethod = addMethod;

  AddMovieOptionsBuilder() {
    AddMovieOptions._defaults(this);
  }

  AddMovieOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ignoreEpisodesWithFiles = $v.ignoreEpisodesWithFiles;
      _ignoreEpisodesWithoutFiles = $v.ignoreEpisodesWithoutFiles;
      _monitor = $v.monitor;
      _searchForMovie = $v.searchForMovie;
      _addMethod = $v.addMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddMovieOptions other) {
    _$v = other as _$AddMovieOptions;
  }

  @override
  void update(void Function(AddMovieOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddMovieOptions build() => _build();

  _$AddMovieOptions _build() {
    final _$result = _$v ??
        _$AddMovieOptions._(
          ignoreEpisodesWithFiles: ignoreEpisodesWithFiles,
          ignoreEpisodesWithoutFiles: ignoreEpisodesWithoutFiles,
          monitor: monitor,
          searchForMovie: searchForMovie,
          addMethod: addMethod,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
