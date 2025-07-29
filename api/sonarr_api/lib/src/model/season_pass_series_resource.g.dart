// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_pass_series_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeasonPassSeriesResource extends SeasonPassSeriesResource {
  @override
  final int? id;
  @override
  final bool? monitored;
  @override
  final BuiltList<SeasonResource>? seasons;

  factory _$SeasonPassSeriesResource(
          [void Function(SeasonPassSeriesResourceBuilder)? updates]) =>
      (SeasonPassSeriesResourceBuilder()..update(updates))._build();

  _$SeasonPassSeriesResource._({this.id, this.monitored, this.seasons})
      : super._();
  @override
  SeasonPassSeriesResource rebuild(
          void Function(SeasonPassSeriesResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonPassSeriesResourceBuilder toBuilder() =>
      SeasonPassSeriesResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonPassSeriesResource &&
        id == other.id &&
        monitored == other.monitored &&
        seasons == other.seasons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, seasons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeasonPassSeriesResource')
          ..add('id', id)
          ..add('monitored', monitored)
          ..add('seasons', seasons))
        .toString();
  }
}

class SeasonPassSeriesResourceBuilder
    implements
        Builder<SeasonPassSeriesResource, SeasonPassSeriesResourceBuilder> {
  _$SeasonPassSeriesResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  ListBuilder<SeasonResource>? _seasons;
  ListBuilder<SeasonResource> get seasons =>
      _$this._seasons ??= ListBuilder<SeasonResource>();
  set seasons(ListBuilder<SeasonResource>? seasons) =>
      _$this._seasons = seasons;

  SeasonPassSeriesResourceBuilder() {
    SeasonPassSeriesResource._defaults(this);
  }

  SeasonPassSeriesResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _monitored = $v.monitored;
      _seasons = $v.seasons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonPassSeriesResource other) {
    _$v = other as _$SeasonPassSeriesResource;
  }

  @override
  void update(void Function(SeasonPassSeriesResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeasonPassSeriesResource build() => _build();

  _$SeasonPassSeriesResource _build() {
    _$SeasonPassSeriesResource _$result;
    try {
      _$result = _$v ??
          _$SeasonPassSeriesResource._(
            id: id,
            monitored: monitored,
            seasons: _seasons?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seasons';
        _seasons?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeasonPassSeriesResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
