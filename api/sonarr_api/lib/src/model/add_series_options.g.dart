// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_series_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddSeriesOptions extends AddSeriesOptions {
  @override
  final bool? ignoreEpisodesWithFiles;
  @override
  final bool? ignoreEpisodesWithoutFiles;
  @override
  final MonitorTypes? monitor;
  @override
  final bool? searchForMissingEpisodes;
  @override
  final bool? searchForCutoffUnmetEpisodes;

  factory _$AddSeriesOptions(
          [void Function(AddSeriesOptionsBuilder)? updates]) =>
      (AddSeriesOptionsBuilder()..update(updates))._build();

  _$AddSeriesOptions._(
      {this.ignoreEpisodesWithFiles,
      this.ignoreEpisodesWithoutFiles,
      this.monitor,
      this.searchForMissingEpisodes,
      this.searchForCutoffUnmetEpisodes})
      : super._();
  @override
  AddSeriesOptions rebuild(void Function(AddSeriesOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddSeriesOptionsBuilder toBuilder() =>
      AddSeriesOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddSeriesOptions &&
        ignoreEpisodesWithFiles == other.ignoreEpisodesWithFiles &&
        ignoreEpisodesWithoutFiles == other.ignoreEpisodesWithoutFiles &&
        monitor == other.monitor &&
        searchForMissingEpisodes == other.searchForMissingEpisodes &&
        searchForCutoffUnmetEpisodes == other.searchForCutoffUnmetEpisodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ignoreEpisodesWithFiles.hashCode);
    _$hash = $jc(_$hash, ignoreEpisodesWithoutFiles.hashCode);
    _$hash = $jc(_$hash, monitor.hashCode);
    _$hash = $jc(_$hash, searchForMissingEpisodes.hashCode);
    _$hash = $jc(_$hash, searchForCutoffUnmetEpisodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddSeriesOptions')
          ..add('ignoreEpisodesWithFiles', ignoreEpisodesWithFiles)
          ..add('ignoreEpisodesWithoutFiles', ignoreEpisodesWithoutFiles)
          ..add('monitor', monitor)
          ..add('searchForMissingEpisodes', searchForMissingEpisodes)
          ..add('searchForCutoffUnmetEpisodes', searchForCutoffUnmetEpisodes))
        .toString();
  }
}

class AddSeriesOptionsBuilder
    implements Builder<AddSeriesOptions, AddSeriesOptionsBuilder> {
  _$AddSeriesOptions? _$v;

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

  bool? _searchForMissingEpisodes;
  bool? get searchForMissingEpisodes => _$this._searchForMissingEpisodes;
  set searchForMissingEpisodes(bool? searchForMissingEpisodes) =>
      _$this._searchForMissingEpisodes = searchForMissingEpisodes;

  bool? _searchForCutoffUnmetEpisodes;
  bool? get searchForCutoffUnmetEpisodes =>
      _$this._searchForCutoffUnmetEpisodes;
  set searchForCutoffUnmetEpisodes(bool? searchForCutoffUnmetEpisodes) =>
      _$this._searchForCutoffUnmetEpisodes = searchForCutoffUnmetEpisodes;

  AddSeriesOptionsBuilder() {
    AddSeriesOptions._defaults(this);
  }

  AddSeriesOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ignoreEpisodesWithFiles = $v.ignoreEpisodesWithFiles;
      _ignoreEpisodesWithoutFiles = $v.ignoreEpisodesWithoutFiles;
      _monitor = $v.monitor;
      _searchForMissingEpisodes = $v.searchForMissingEpisodes;
      _searchForCutoffUnmetEpisodes = $v.searchForCutoffUnmetEpisodes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddSeriesOptions other) {
    _$v = other as _$AddSeriesOptions;
  }

  @override
  void update(void Function(AddSeriesOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddSeriesOptions build() => _build();

  _$AddSeriesOptions _build() {
    final _$result = _$v ??
        _$AddSeriesOptions._(
          ignoreEpisodesWithFiles: ignoreEpisodesWithFiles,
          ignoreEpisodesWithoutFiles: ignoreEpisodesWithoutFiles,
          monitor: monitor,
          searchForMissingEpisodes: searchForMissingEpisodes,
          searchForCutoffUnmetEpisodes: searchForCutoffUnmetEpisodes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
