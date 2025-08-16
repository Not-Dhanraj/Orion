// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_statistics_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovieStatisticsResource extends MovieStatisticsResource {
  @override
  final int? movieFileCount;
  @override
  final int? sizeOnDisk;
  @override
  final BuiltList<String>? releaseGroups;

  factory _$MovieStatisticsResource(
          [void Function(MovieStatisticsResourceBuilder)? updates]) =>
      (MovieStatisticsResourceBuilder()..update(updates))._build();

  _$MovieStatisticsResource._(
      {this.movieFileCount, this.sizeOnDisk, this.releaseGroups})
      : super._();
  @override
  MovieStatisticsResource rebuild(
          void Function(MovieStatisticsResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieStatisticsResourceBuilder toBuilder() =>
      MovieStatisticsResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieStatisticsResource &&
        movieFileCount == other.movieFileCount &&
        sizeOnDisk == other.sizeOnDisk &&
        releaseGroups == other.releaseGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movieFileCount.hashCode);
    _$hash = $jc(_$hash, sizeOnDisk.hashCode);
    _$hash = $jc(_$hash, releaseGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieStatisticsResource')
          ..add('movieFileCount', movieFileCount)
          ..add('sizeOnDisk', sizeOnDisk)
          ..add('releaseGroups', releaseGroups))
        .toString();
  }
}

class MovieStatisticsResourceBuilder
    implements
        Builder<MovieStatisticsResource, MovieStatisticsResourceBuilder> {
  _$MovieStatisticsResource? _$v;

  int? _movieFileCount;
  int? get movieFileCount => _$this._movieFileCount;
  set movieFileCount(int? movieFileCount) =>
      _$this._movieFileCount = movieFileCount;

  int? _sizeOnDisk;
  int? get sizeOnDisk => _$this._sizeOnDisk;
  set sizeOnDisk(int? sizeOnDisk) => _$this._sizeOnDisk = sizeOnDisk;

  ListBuilder<String>? _releaseGroups;
  ListBuilder<String> get releaseGroups =>
      _$this._releaseGroups ??= ListBuilder<String>();
  set releaseGroups(ListBuilder<String>? releaseGroups) =>
      _$this._releaseGroups = releaseGroups;

  MovieStatisticsResourceBuilder() {
    MovieStatisticsResource._defaults(this);
  }

  MovieStatisticsResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movieFileCount = $v.movieFileCount;
      _sizeOnDisk = $v.sizeOnDisk;
      _releaseGroups = $v.releaseGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieStatisticsResource other) {
    _$v = other as _$MovieStatisticsResource;
  }

  @override
  void update(void Function(MovieStatisticsResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieStatisticsResource build() => _build();

  _$MovieStatisticsResource _build() {
    _$MovieStatisticsResource _$result;
    try {
      _$result = _$v ??
          _$MovieStatisticsResource._(
            movieFileCount: movieFileCount,
            sizeOnDisk: sizeOnDisk,
            releaseGroups: _releaseGroups?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'releaseGroups';
        _releaseGroups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MovieStatisticsResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
