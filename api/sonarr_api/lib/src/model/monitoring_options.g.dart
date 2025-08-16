// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MonitoringOptions extends MonitoringOptions {
  @override
  final bool? ignoreEpisodesWithFiles;
  @override
  final bool? ignoreEpisodesWithoutFiles;
  @override
  final MonitorTypes? monitor;

  factory _$MonitoringOptions(
          [void Function(MonitoringOptionsBuilder)? updates]) =>
      (MonitoringOptionsBuilder()..update(updates))._build();

  _$MonitoringOptions._(
      {this.ignoreEpisodesWithFiles,
      this.ignoreEpisodesWithoutFiles,
      this.monitor})
      : super._();
  @override
  MonitoringOptions rebuild(void Function(MonitoringOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonitoringOptionsBuilder toBuilder() =>
      MonitoringOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonitoringOptions &&
        ignoreEpisodesWithFiles == other.ignoreEpisodesWithFiles &&
        ignoreEpisodesWithoutFiles == other.ignoreEpisodesWithoutFiles &&
        monitor == other.monitor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ignoreEpisodesWithFiles.hashCode);
    _$hash = $jc(_$hash, ignoreEpisodesWithoutFiles.hashCode);
    _$hash = $jc(_$hash, monitor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonitoringOptions')
          ..add('ignoreEpisodesWithFiles', ignoreEpisodesWithFiles)
          ..add('ignoreEpisodesWithoutFiles', ignoreEpisodesWithoutFiles)
          ..add('monitor', monitor))
        .toString();
  }
}

class MonitoringOptionsBuilder
    implements Builder<MonitoringOptions, MonitoringOptionsBuilder> {
  _$MonitoringOptions? _$v;

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

  MonitoringOptionsBuilder() {
    MonitoringOptions._defaults(this);
  }

  MonitoringOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ignoreEpisodesWithFiles = $v.ignoreEpisodesWithFiles;
      _ignoreEpisodesWithoutFiles = $v.ignoreEpisodesWithoutFiles;
      _monitor = $v.monitor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonitoringOptions other) {
    _$v = other as _$MonitoringOptions;
  }

  @override
  void update(void Function(MonitoringOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonitoringOptions build() => _build();

  _$MonitoringOptions _build() {
    final _$result = _$v ??
        _$MonitoringOptions._(
          ignoreEpisodesWithFiles: ignoreEpisodesWithFiles,
          ignoreEpisodesWithoutFiles: ignoreEpisodesWithoutFiles,
          monitor: monitor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
