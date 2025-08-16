// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_management_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaManagementConfigResource extends MediaManagementConfigResource {
  @override
  final int? id;
  @override
  final bool? autoUnmonitorPreviouslyDownloadedEpisodes;
  @override
  final String? recycleBin;
  @override
  final int? recycleBinCleanupDays;
  @override
  final ProperDownloadTypes? downloadPropersAndRepacks;
  @override
  final bool? createEmptySeriesFolders;
  @override
  final bool? deleteEmptyFolders;
  @override
  final FileDateType? fileDate;
  @override
  final RescanAfterRefreshType? rescanAfterRefresh;
  @override
  final bool? setPermissionsLinux;
  @override
  final String? chmodFolder;
  @override
  final String? chownGroup;
  @override
  final EpisodeTitleRequiredType? episodeTitleRequired;
  @override
  final bool? skipFreeSpaceCheckWhenImporting;
  @override
  final int? minimumFreeSpaceWhenImporting;
  @override
  final bool? copyUsingHardlinks;
  @override
  final bool? useScriptImport;
  @override
  final String? scriptImportPath;
  @override
  final bool? importExtraFiles;
  @override
  final String? extraFileExtensions;
  @override
  final bool? enableMediaInfo;

  factory _$MediaManagementConfigResource(
          [void Function(MediaManagementConfigResourceBuilder)? updates]) =>
      (MediaManagementConfigResourceBuilder()..update(updates))._build();

  _$MediaManagementConfigResource._(
      {this.id,
      this.autoUnmonitorPreviouslyDownloadedEpisodes,
      this.recycleBin,
      this.recycleBinCleanupDays,
      this.downloadPropersAndRepacks,
      this.createEmptySeriesFolders,
      this.deleteEmptyFolders,
      this.fileDate,
      this.rescanAfterRefresh,
      this.setPermissionsLinux,
      this.chmodFolder,
      this.chownGroup,
      this.episodeTitleRequired,
      this.skipFreeSpaceCheckWhenImporting,
      this.minimumFreeSpaceWhenImporting,
      this.copyUsingHardlinks,
      this.useScriptImport,
      this.scriptImportPath,
      this.importExtraFiles,
      this.extraFileExtensions,
      this.enableMediaInfo})
      : super._();
  @override
  MediaManagementConfigResource rebuild(
          void Function(MediaManagementConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaManagementConfigResourceBuilder toBuilder() =>
      MediaManagementConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaManagementConfigResource &&
        id == other.id &&
        autoUnmonitorPreviouslyDownloadedEpisodes ==
            other.autoUnmonitorPreviouslyDownloadedEpisodes &&
        recycleBin == other.recycleBin &&
        recycleBinCleanupDays == other.recycleBinCleanupDays &&
        downloadPropersAndRepacks == other.downloadPropersAndRepacks &&
        createEmptySeriesFolders == other.createEmptySeriesFolders &&
        deleteEmptyFolders == other.deleteEmptyFolders &&
        fileDate == other.fileDate &&
        rescanAfterRefresh == other.rescanAfterRefresh &&
        setPermissionsLinux == other.setPermissionsLinux &&
        chmodFolder == other.chmodFolder &&
        chownGroup == other.chownGroup &&
        episodeTitleRequired == other.episodeTitleRequired &&
        skipFreeSpaceCheckWhenImporting ==
            other.skipFreeSpaceCheckWhenImporting &&
        minimumFreeSpaceWhenImporting == other.minimumFreeSpaceWhenImporting &&
        copyUsingHardlinks == other.copyUsingHardlinks &&
        useScriptImport == other.useScriptImport &&
        scriptImportPath == other.scriptImportPath &&
        importExtraFiles == other.importExtraFiles &&
        extraFileExtensions == other.extraFileExtensions &&
        enableMediaInfo == other.enableMediaInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, autoUnmonitorPreviouslyDownloadedEpisodes.hashCode);
    _$hash = $jc(_$hash, recycleBin.hashCode);
    _$hash = $jc(_$hash, recycleBinCleanupDays.hashCode);
    _$hash = $jc(_$hash, downloadPropersAndRepacks.hashCode);
    _$hash = $jc(_$hash, createEmptySeriesFolders.hashCode);
    _$hash = $jc(_$hash, deleteEmptyFolders.hashCode);
    _$hash = $jc(_$hash, fileDate.hashCode);
    _$hash = $jc(_$hash, rescanAfterRefresh.hashCode);
    _$hash = $jc(_$hash, setPermissionsLinux.hashCode);
    _$hash = $jc(_$hash, chmodFolder.hashCode);
    _$hash = $jc(_$hash, chownGroup.hashCode);
    _$hash = $jc(_$hash, episodeTitleRequired.hashCode);
    _$hash = $jc(_$hash, skipFreeSpaceCheckWhenImporting.hashCode);
    _$hash = $jc(_$hash, minimumFreeSpaceWhenImporting.hashCode);
    _$hash = $jc(_$hash, copyUsingHardlinks.hashCode);
    _$hash = $jc(_$hash, useScriptImport.hashCode);
    _$hash = $jc(_$hash, scriptImportPath.hashCode);
    _$hash = $jc(_$hash, importExtraFiles.hashCode);
    _$hash = $jc(_$hash, extraFileExtensions.hashCode);
    _$hash = $jc(_$hash, enableMediaInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaManagementConfigResource')
          ..add('id', id)
          ..add('autoUnmonitorPreviouslyDownloadedEpisodes',
              autoUnmonitorPreviouslyDownloadedEpisodes)
          ..add('recycleBin', recycleBin)
          ..add('recycleBinCleanupDays', recycleBinCleanupDays)
          ..add('downloadPropersAndRepacks', downloadPropersAndRepacks)
          ..add('createEmptySeriesFolders', createEmptySeriesFolders)
          ..add('deleteEmptyFolders', deleteEmptyFolders)
          ..add('fileDate', fileDate)
          ..add('rescanAfterRefresh', rescanAfterRefresh)
          ..add('setPermissionsLinux', setPermissionsLinux)
          ..add('chmodFolder', chmodFolder)
          ..add('chownGroup', chownGroup)
          ..add('episodeTitleRequired', episodeTitleRequired)
          ..add('skipFreeSpaceCheckWhenImporting',
              skipFreeSpaceCheckWhenImporting)
          ..add('minimumFreeSpaceWhenImporting', minimumFreeSpaceWhenImporting)
          ..add('copyUsingHardlinks', copyUsingHardlinks)
          ..add('useScriptImport', useScriptImport)
          ..add('scriptImportPath', scriptImportPath)
          ..add('importExtraFiles', importExtraFiles)
          ..add('extraFileExtensions', extraFileExtensions)
          ..add('enableMediaInfo', enableMediaInfo))
        .toString();
  }
}

class MediaManagementConfigResourceBuilder
    implements
        Builder<MediaManagementConfigResource,
            MediaManagementConfigResourceBuilder> {
  _$MediaManagementConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _autoUnmonitorPreviouslyDownloadedEpisodes;
  bool? get autoUnmonitorPreviouslyDownloadedEpisodes =>
      _$this._autoUnmonitorPreviouslyDownloadedEpisodes;
  set autoUnmonitorPreviouslyDownloadedEpisodes(
          bool? autoUnmonitorPreviouslyDownloadedEpisodes) =>
      _$this._autoUnmonitorPreviouslyDownloadedEpisodes =
          autoUnmonitorPreviouslyDownloadedEpisodes;

  String? _recycleBin;
  String? get recycleBin => _$this._recycleBin;
  set recycleBin(String? recycleBin) => _$this._recycleBin = recycleBin;

  int? _recycleBinCleanupDays;
  int? get recycleBinCleanupDays => _$this._recycleBinCleanupDays;
  set recycleBinCleanupDays(int? recycleBinCleanupDays) =>
      _$this._recycleBinCleanupDays = recycleBinCleanupDays;

  ProperDownloadTypes? _downloadPropersAndRepacks;
  ProperDownloadTypes? get downloadPropersAndRepacks =>
      _$this._downloadPropersAndRepacks;
  set downloadPropersAndRepacks(
          ProperDownloadTypes? downloadPropersAndRepacks) =>
      _$this._downloadPropersAndRepacks = downloadPropersAndRepacks;

  bool? _createEmptySeriesFolders;
  bool? get createEmptySeriesFolders => _$this._createEmptySeriesFolders;
  set createEmptySeriesFolders(bool? createEmptySeriesFolders) =>
      _$this._createEmptySeriesFolders = createEmptySeriesFolders;

  bool? _deleteEmptyFolders;
  bool? get deleteEmptyFolders => _$this._deleteEmptyFolders;
  set deleteEmptyFolders(bool? deleteEmptyFolders) =>
      _$this._deleteEmptyFolders = deleteEmptyFolders;

  FileDateType? _fileDate;
  FileDateType? get fileDate => _$this._fileDate;
  set fileDate(FileDateType? fileDate) => _$this._fileDate = fileDate;

  RescanAfterRefreshType? _rescanAfterRefresh;
  RescanAfterRefreshType? get rescanAfterRefresh => _$this._rescanAfterRefresh;
  set rescanAfterRefresh(RescanAfterRefreshType? rescanAfterRefresh) =>
      _$this._rescanAfterRefresh = rescanAfterRefresh;

  bool? _setPermissionsLinux;
  bool? get setPermissionsLinux => _$this._setPermissionsLinux;
  set setPermissionsLinux(bool? setPermissionsLinux) =>
      _$this._setPermissionsLinux = setPermissionsLinux;

  String? _chmodFolder;
  String? get chmodFolder => _$this._chmodFolder;
  set chmodFolder(String? chmodFolder) => _$this._chmodFolder = chmodFolder;

  String? _chownGroup;
  String? get chownGroup => _$this._chownGroup;
  set chownGroup(String? chownGroup) => _$this._chownGroup = chownGroup;

  EpisodeTitleRequiredType? _episodeTitleRequired;
  EpisodeTitleRequiredType? get episodeTitleRequired =>
      _$this._episodeTitleRequired;
  set episodeTitleRequired(EpisodeTitleRequiredType? episodeTitleRequired) =>
      _$this._episodeTitleRequired = episodeTitleRequired;

  bool? _skipFreeSpaceCheckWhenImporting;
  bool? get skipFreeSpaceCheckWhenImporting =>
      _$this._skipFreeSpaceCheckWhenImporting;
  set skipFreeSpaceCheckWhenImporting(bool? skipFreeSpaceCheckWhenImporting) =>
      _$this._skipFreeSpaceCheckWhenImporting = skipFreeSpaceCheckWhenImporting;

  int? _minimumFreeSpaceWhenImporting;
  int? get minimumFreeSpaceWhenImporting =>
      _$this._minimumFreeSpaceWhenImporting;
  set minimumFreeSpaceWhenImporting(int? minimumFreeSpaceWhenImporting) =>
      _$this._minimumFreeSpaceWhenImporting = minimumFreeSpaceWhenImporting;

  bool? _copyUsingHardlinks;
  bool? get copyUsingHardlinks => _$this._copyUsingHardlinks;
  set copyUsingHardlinks(bool? copyUsingHardlinks) =>
      _$this._copyUsingHardlinks = copyUsingHardlinks;

  bool? _useScriptImport;
  bool? get useScriptImport => _$this._useScriptImport;
  set useScriptImport(bool? useScriptImport) =>
      _$this._useScriptImport = useScriptImport;

  String? _scriptImportPath;
  String? get scriptImportPath => _$this._scriptImportPath;
  set scriptImportPath(String? scriptImportPath) =>
      _$this._scriptImportPath = scriptImportPath;

  bool? _importExtraFiles;
  bool? get importExtraFiles => _$this._importExtraFiles;
  set importExtraFiles(bool? importExtraFiles) =>
      _$this._importExtraFiles = importExtraFiles;

  String? _extraFileExtensions;
  String? get extraFileExtensions => _$this._extraFileExtensions;
  set extraFileExtensions(String? extraFileExtensions) =>
      _$this._extraFileExtensions = extraFileExtensions;

  bool? _enableMediaInfo;
  bool? get enableMediaInfo => _$this._enableMediaInfo;
  set enableMediaInfo(bool? enableMediaInfo) =>
      _$this._enableMediaInfo = enableMediaInfo;

  MediaManagementConfigResourceBuilder() {
    MediaManagementConfigResource._defaults(this);
  }

  MediaManagementConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _autoUnmonitorPreviouslyDownloadedEpisodes =
          $v.autoUnmonitorPreviouslyDownloadedEpisodes;
      _recycleBin = $v.recycleBin;
      _recycleBinCleanupDays = $v.recycleBinCleanupDays;
      _downloadPropersAndRepacks = $v.downloadPropersAndRepacks;
      _createEmptySeriesFolders = $v.createEmptySeriesFolders;
      _deleteEmptyFolders = $v.deleteEmptyFolders;
      _fileDate = $v.fileDate;
      _rescanAfterRefresh = $v.rescanAfterRefresh;
      _setPermissionsLinux = $v.setPermissionsLinux;
      _chmodFolder = $v.chmodFolder;
      _chownGroup = $v.chownGroup;
      _episodeTitleRequired = $v.episodeTitleRequired;
      _skipFreeSpaceCheckWhenImporting = $v.skipFreeSpaceCheckWhenImporting;
      _minimumFreeSpaceWhenImporting = $v.minimumFreeSpaceWhenImporting;
      _copyUsingHardlinks = $v.copyUsingHardlinks;
      _useScriptImport = $v.useScriptImport;
      _scriptImportPath = $v.scriptImportPath;
      _importExtraFiles = $v.importExtraFiles;
      _extraFileExtensions = $v.extraFileExtensions;
      _enableMediaInfo = $v.enableMediaInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaManagementConfigResource other) {
    _$v = other as _$MediaManagementConfigResource;
  }

  @override
  void update(void Function(MediaManagementConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaManagementConfigResource build() => _build();

  _$MediaManagementConfigResource _build() {
    final _$result = _$v ??
        _$MediaManagementConfigResource._(
          id: id,
          autoUnmonitorPreviouslyDownloadedEpisodes:
              autoUnmonitorPreviouslyDownloadedEpisodes,
          recycleBin: recycleBin,
          recycleBinCleanupDays: recycleBinCleanupDays,
          downloadPropersAndRepacks: downloadPropersAndRepacks,
          createEmptySeriesFolders: createEmptySeriesFolders,
          deleteEmptyFolders: deleteEmptyFolders,
          fileDate: fileDate,
          rescanAfterRefresh: rescanAfterRefresh,
          setPermissionsLinux: setPermissionsLinux,
          chmodFolder: chmodFolder,
          chownGroup: chownGroup,
          episodeTitleRequired: episodeTitleRequired,
          skipFreeSpaceCheckWhenImporting: skipFreeSpaceCheckWhenImporting,
          minimumFreeSpaceWhenImporting: minimumFreeSpaceWhenImporting,
          copyUsingHardlinks: copyUsingHardlinks,
          useScriptImport: useScriptImport,
          scriptImportPath: scriptImportPath,
          importExtraFiles: importExtraFiles,
          extraFileExtensions: extraFileExtensions,
          enableMediaInfo: enableMediaInfo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
