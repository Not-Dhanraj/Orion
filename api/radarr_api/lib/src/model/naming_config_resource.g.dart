// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naming_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NamingConfigResource extends NamingConfigResource {
  @override
  final int? id;
  @override
  final bool? renameMovies;
  @override
  final bool? replaceIllegalCharacters;
  @override
  final ColonReplacementFormat? colonReplacementFormat;
  @override
  final String? standardMovieFormat;
  @override
  final String? movieFolderFormat;

  factory _$NamingConfigResource(
          [void Function(NamingConfigResourceBuilder)? updates]) =>
      (NamingConfigResourceBuilder()..update(updates))._build();

  _$NamingConfigResource._(
      {this.id,
      this.renameMovies,
      this.replaceIllegalCharacters,
      this.colonReplacementFormat,
      this.standardMovieFormat,
      this.movieFolderFormat})
      : super._();
  @override
  NamingConfigResource rebuild(
          void Function(NamingConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NamingConfigResourceBuilder toBuilder() =>
      NamingConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NamingConfigResource &&
        id == other.id &&
        renameMovies == other.renameMovies &&
        replaceIllegalCharacters == other.replaceIllegalCharacters &&
        colonReplacementFormat == other.colonReplacementFormat &&
        standardMovieFormat == other.standardMovieFormat &&
        movieFolderFormat == other.movieFolderFormat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, renameMovies.hashCode);
    _$hash = $jc(_$hash, replaceIllegalCharacters.hashCode);
    _$hash = $jc(_$hash, colonReplacementFormat.hashCode);
    _$hash = $jc(_$hash, standardMovieFormat.hashCode);
    _$hash = $jc(_$hash, movieFolderFormat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NamingConfigResource')
          ..add('id', id)
          ..add('renameMovies', renameMovies)
          ..add('replaceIllegalCharacters', replaceIllegalCharacters)
          ..add('colonReplacementFormat', colonReplacementFormat)
          ..add('standardMovieFormat', standardMovieFormat)
          ..add('movieFolderFormat', movieFolderFormat))
        .toString();
  }
}

class NamingConfigResourceBuilder
    implements Builder<NamingConfigResource, NamingConfigResourceBuilder> {
  _$NamingConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _renameMovies;
  bool? get renameMovies => _$this._renameMovies;
  set renameMovies(bool? renameMovies) => _$this._renameMovies = renameMovies;

  bool? _replaceIllegalCharacters;
  bool? get replaceIllegalCharacters => _$this._replaceIllegalCharacters;
  set replaceIllegalCharacters(bool? replaceIllegalCharacters) =>
      _$this._replaceIllegalCharacters = replaceIllegalCharacters;

  ColonReplacementFormat? _colonReplacementFormat;
  ColonReplacementFormat? get colonReplacementFormat =>
      _$this._colonReplacementFormat;
  set colonReplacementFormat(ColonReplacementFormat? colonReplacementFormat) =>
      _$this._colonReplacementFormat = colonReplacementFormat;

  String? _standardMovieFormat;
  String? get standardMovieFormat => _$this._standardMovieFormat;
  set standardMovieFormat(String? standardMovieFormat) =>
      _$this._standardMovieFormat = standardMovieFormat;

  String? _movieFolderFormat;
  String? get movieFolderFormat => _$this._movieFolderFormat;
  set movieFolderFormat(String? movieFolderFormat) =>
      _$this._movieFolderFormat = movieFolderFormat;

  NamingConfigResourceBuilder() {
    NamingConfigResource._defaults(this);
  }

  NamingConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _renameMovies = $v.renameMovies;
      _replaceIllegalCharacters = $v.replaceIllegalCharacters;
      _colonReplacementFormat = $v.colonReplacementFormat;
      _standardMovieFormat = $v.standardMovieFormat;
      _movieFolderFormat = $v.movieFolderFormat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NamingConfigResource other) {
    _$v = other as _$NamingConfigResource;
  }

  @override
  void update(void Function(NamingConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NamingConfigResource build() => _build();

  _$NamingConfigResource _build() {
    final _$result = _$v ??
        _$NamingConfigResource._(
          id: id,
          renameMovies: renameMovies,
          replaceIllegalCharacters: replaceIllegalCharacters,
          colonReplacementFormat: colonReplacementFormat,
          standardMovieFormat: standardMovieFormat,
          movieFolderFormat: movieFolderFormat,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
