// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_client_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DownloadClientConfigResource extends DownloadClientConfigResource {
  @override
  final int? id;
  @override
  final String? downloadClientWorkingFolders;
  @override
  final bool? enableCompletedDownloadHandling;
  @override
  final int? checkForFinishedDownloadInterval;
  @override
  final bool? autoRedownloadFailed;
  @override
  final bool? autoRedownloadFailedFromInteractiveSearch;

  factory _$DownloadClientConfigResource(
          [void Function(DownloadClientConfigResourceBuilder)? updates]) =>
      (DownloadClientConfigResourceBuilder()..update(updates))._build();

  _$DownloadClientConfigResource._(
      {this.id,
      this.downloadClientWorkingFolders,
      this.enableCompletedDownloadHandling,
      this.checkForFinishedDownloadInterval,
      this.autoRedownloadFailed,
      this.autoRedownloadFailedFromInteractiveSearch})
      : super._();
  @override
  DownloadClientConfigResource rebuild(
          void Function(DownloadClientConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadClientConfigResourceBuilder toBuilder() =>
      DownloadClientConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadClientConfigResource &&
        id == other.id &&
        downloadClientWorkingFolders == other.downloadClientWorkingFolders &&
        enableCompletedDownloadHandling ==
            other.enableCompletedDownloadHandling &&
        checkForFinishedDownloadInterval ==
            other.checkForFinishedDownloadInterval &&
        autoRedownloadFailed == other.autoRedownloadFailed &&
        autoRedownloadFailedFromInteractiveSearch ==
            other.autoRedownloadFailedFromInteractiveSearch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, downloadClientWorkingFolders.hashCode);
    _$hash = $jc(_$hash, enableCompletedDownloadHandling.hashCode);
    _$hash = $jc(_$hash, checkForFinishedDownloadInterval.hashCode);
    _$hash = $jc(_$hash, autoRedownloadFailed.hashCode);
    _$hash = $jc(_$hash, autoRedownloadFailedFromInteractiveSearch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadClientConfigResource')
          ..add('id', id)
          ..add('downloadClientWorkingFolders', downloadClientWorkingFolders)
          ..add('enableCompletedDownloadHandling',
              enableCompletedDownloadHandling)
          ..add('checkForFinishedDownloadInterval',
              checkForFinishedDownloadInterval)
          ..add('autoRedownloadFailed', autoRedownloadFailed)
          ..add('autoRedownloadFailedFromInteractiveSearch',
              autoRedownloadFailedFromInteractiveSearch))
        .toString();
  }
}

class DownloadClientConfigResourceBuilder
    implements
        Builder<DownloadClientConfigResource,
            DownloadClientConfigResourceBuilder> {
  _$DownloadClientConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _downloadClientWorkingFolders;
  String? get downloadClientWorkingFolders =>
      _$this._downloadClientWorkingFolders;
  set downloadClientWorkingFolders(String? downloadClientWorkingFolders) =>
      _$this._downloadClientWorkingFolders = downloadClientWorkingFolders;

  bool? _enableCompletedDownloadHandling;
  bool? get enableCompletedDownloadHandling =>
      _$this._enableCompletedDownloadHandling;
  set enableCompletedDownloadHandling(bool? enableCompletedDownloadHandling) =>
      _$this._enableCompletedDownloadHandling = enableCompletedDownloadHandling;

  int? _checkForFinishedDownloadInterval;
  int? get checkForFinishedDownloadInterval =>
      _$this._checkForFinishedDownloadInterval;
  set checkForFinishedDownloadInterval(int? checkForFinishedDownloadInterval) =>
      _$this._checkForFinishedDownloadInterval =
          checkForFinishedDownloadInterval;

  bool? _autoRedownloadFailed;
  bool? get autoRedownloadFailed => _$this._autoRedownloadFailed;
  set autoRedownloadFailed(bool? autoRedownloadFailed) =>
      _$this._autoRedownloadFailed = autoRedownloadFailed;

  bool? _autoRedownloadFailedFromInteractiveSearch;
  bool? get autoRedownloadFailedFromInteractiveSearch =>
      _$this._autoRedownloadFailedFromInteractiveSearch;
  set autoRedownloadFailedFromInteractiveSearch(
          bool? autoRedownloadFailedFromInteractiveSearch) =>
      _$this._autoRedownloadFailedFromInteractiveSearch =
          autoRedownloadFailedFromInteractiveSearch;

  DownloadClientConfigResourceBuilder() {
    DownloadClientConfigResource._defaults(this);
  }

  DownloadClientConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _downloadClientWorkingFolders = $v.downloadClientWorkingFolders;
      _enableCompletedDownloadHandling = $v.enableCompletedDownloadHandling;
      _checkForFinishedDownloadInterval = $v.checkForFinishedDownloadInterval;
      _autoRedownloadFailed = $v.autoRedownloadFailed;
      _autoRedownloadFailedFromInteractiveSearch =
          $v.autoRedownloadFailedFromInteractiveSearch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadClientConfigResource other) {
    _$v = other as _$DownloadClientConfigResource;
  }

  @override
  void update(void Function(DownloadClientConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadClientConfigResource build() => _build();

  _$DownloadClientConfigResource _build() {
    final _$result = _$v ??
        _$DownloadClientConfigResource._(
          id: id,
          downloadClientWorkingFolders: downloadClientWorkingFolders,
          enableCompletedDownloadHandling: enableCompletedDownloadHandling,
          checkForFinishedDownloadInterval: checkForFinishedDownloadInterval,
          autoRedownloadFailed: autoRedownloadFailed,
          autoRedownloadFailedFromInteractiveSearch:
              autoRedownloadFailedFromInteractiveSearch,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
