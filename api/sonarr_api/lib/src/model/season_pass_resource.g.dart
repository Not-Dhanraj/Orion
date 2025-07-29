// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_pass_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeasonPassResource extends SeasonPassResource {
  @override
  final BuiltList<SeasonPassSeriesResource>? series;
  @override
  final MonitoringOptions? monitoringOptions;

  factory _$SeasonPassResource(
          [void Function(SeasonPassResourceBuilder)? updates]) =>
      (SeasonPassResourceBuilder()..update(updates))._build();

  _$SeasonPassResource._({this.series, this.monitoringOptions}) : super._();
  @override
  SeasonPassResource rebuild(
          void Function(SeasonPassResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonPassResourceBuilder toBuilder() =>
      SeasonPassResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonPassResource &&
        series == other.series &&
        monitoringOptions == other.monitoringOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, monitoringOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeasonPassResource')
          ..add('series', series)
          ..add('monitoringOptions', monitoringOptions))
        .toString();
  }
}

class SeasonPassResourceBuilder
    implements Builder<SeasonPassResource, SeasonPassResourceBuilder> {
  _$SeasonPassResource? _$v;

  ListBuilder<SeasonPassSeriesResource>? _series;
  ListBuilder<SeasonPassSeriesResource> get series =>
      _$this._series ??= ListBuilder<SeasonPassSeriesResource>();
  set series(ListBuilder<SeasonPassSeriesResource>? series) =>
      _$this._series = series;

  MonitoringOptionsBuilder? _monitoringOptions;
  MonitoringOptionsBuilder get monitoringOptions =>
      _$this._monitoringOptions ??= MonitoringOptionsBuilder();
  set monitoringOptions(MonitoringOptionsBuilder? monitoringOptions) =>
      _$this._monitoringOptions = monitoringOptions;

  SeasonPassResourceBuilder() {
    SeasonPassResource._defaults(this);
  }

  SeasonPassResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _series = $v.series?.toBuilder();
      _monitoringOptions = $v.monitoringOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonPassResource other) {
    _$v = other as _$SeasonPassResource;
  }

  @override
  void update(void Function(SeasonPassResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeasonPassResource build() => _build();

  _$SeasonPassResource _build() {
    _$SeasonPassResource _$result;
    try {
      _$result = _$v ??
          _$SeasonPassResource._(
            series: _series?.build(),
            monitoringOptions: _monitoringOptions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        _series?.build();
        _$failedField = 'monitoringOptions';
        _monitoringOptions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeasonPassResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
