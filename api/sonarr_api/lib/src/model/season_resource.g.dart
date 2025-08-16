// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeasonResource extends SeasonResource {
  @override
  final int? seasonNumber;
  @override
  final bool? monitored;
  @override
  final SeasonStatisticsResource? statistics;
  @override
  final BuiltList<MediaCover>? images;

  factory _$SeasonResource([void Function(SeasonResourceBuilder)? updates]) =>
      (SeasonResourceBuilder()..update(updates))._build();

  _$SeasonResource._(
      {this.seasonNumber, this.monitored, this.statistics, this.images})
      : super._();
  @override
  SeasonResource rebuild(void Function(SeasonResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonResourceBuilder toBuilder() => SeasonResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonResource &&
        seasonNumber == other.seasonNumber &&
        monitored == other.monitored &&
        statistics == other.statistics &&
        images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeasonResource')
          ..add('seasonNumber', seasonNumber)
          ..add('monitored', monitored)
          ..add('statistics', statistics)
          ..add('images', images))
        .toString();
  }
}

class SeasonResourceBuilder
    implements Builder<SeasonResource, SeasonResourceBuilder> {
  _$SeasonResource? _$v;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  SeasonStatisticsResourceBuilder? _statistics;
  SeasonStatisticsResourceBuilder get statistics =>
      _$this._statistics ??= SeasonStatisticsResourceBuilder();
  set statistics(SeasonStatisticsResourceBuilder? statistics) =>
      _$this._statistics = statistics;

  ListBuilder<MediaCover>? _images;
  ListBuilder<MediaCover> get images =>
      _$this._images ??= ListBuilder<MediaCover>();
  set images(ListBuilder<MediaCover>? images) => _$this._images = images;

  SeasonResourceBuilder() {
    SeasonResource._defaults(this);
  }

  SeasonResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seasonNumber = $v.seasonNumber;
      _monitored = $v.monitored;
      _statistics = $v.statistics?.toBuilder();
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonResource other) {
    _$v = other as _$SeasonResource;
  }

  @override
  void update(void Function(SeasonResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeasonResource build() => _build();

  _$SeasonResource _build() {
    _$SeasonResource _$result;
    try {
      _$result = _$v ??
          _$SeasonResource._(
            seasonNumber: seasonNumber,
            monitored: monitored,
            statistics: _statistics?.build(),
            images: _images?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statistics';
        _statistics?.build();
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeasonResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
